class_name Personagem
extends CharacterBody2D

# Variáveis de inicialização
@onready var controlador_animacoes: AnimationTree = $ControladorAnimacoes
@onready var area_interacao: Area2D = $AreaInteracao

# Variáveis de movimento
var direcao: Vector2
var ultima_direcao: Vector2
var velocidade: float

# Variáveis de estado
var item_coletavel: Coletavel = null

# Variáveis alteravéis
@export_category("Variáveis")
@export var velocidade_normal: float = 100.0
@export var velocidade_correndo: float = 200.0
@export var stamina_max = 100.0
@export var stamina_min: float = 0.0
@export var stamina_atual: float
@export var passo_stamina: float = 20.0

# Sinais
signal stamina_mudou(valor_atual)

func _ready() -> void:
#	Garante que o controlador de animações está ativo
	controlador_animacoes.active = true
	
#	Começa com stamina cheia
	stamina_atual = stamina_max

func _physics_process(_delta: float) -> void:
	direcao = Input.get_vector("mover_esquerda", "mover_direita", "mover_cima", "mover_baixo")
	
	if direcao != Vector2.ZERO:
		ultima_direcao = direcao
#		Move a área 16px pra direção que o personagem está olhando
		area_interacao.position = 16 * ultima_direcao
	
	if direcao != Vector2.ZERO and Input.is_action_pressed("correr") and stamina_atual > 0:
		velocidade = velocidade_correndo
		
		stamina_atual -= passo_stamina * _delta
		stamina_atual = max(0.0, stamina_atual)
		
		stamina_mudou.emit(stamina_atual)
	elif (stamina_atual < 100):
		velocidade = velocidade_normal
		stamina_atual += (passo_stamina/2) * _delta
		
		stamina_mudou.emit(stamina_atual)
	else:
		velocidade = velocidade_normal
		
	velocity = direcao * velocidade
	move_and_slide()
	
	_atualizar_animacoes()

func _atualizar_animacoes():
	var andando = direcao != Vector2.ZERO
	var correndo = andando and Input.is_action_just_pressed("correr") and stamina_atual > 0
	var interagindo = Input.is_action_just_pressed("interagir")
	
	controlador_animacoes.set("parameters/conditions/esta_parado", !andando)
	controlador_animacoes.set("parameters/conditions/esta_andando", andando)
	controlador_animacoes.set("parameters/conditions/esta_correndo", correndo)
	
	if interagindo:
		controlador_animacoes.set("parameters/conditions/esta_interagindo", true)
	else:
		controlador_animacoes.set("parameters/conditions/esta_interagindo", false)
	
	var blend_dir = direcao if direcao != Vector2.ZERO else ultima_direcao
	
	controlador_animacoes.set("parameters/idle/blend_position", blend_dir)
	controlador_animacoes.set("parameters/walk/blend_position", blend_dir)
	controlador_animacoes.set("parameters/run/blend_position", blend_dir)
	controlador_animacoes.set("parameters/interact/blend_position", blend_dir)

func _entrou_area_interacao(body: Node2D) -> void:
	if body is Coletavel:
		item_coletavel = body



func _saiu_area_interacao(body: Node2D) -> void:
	if body is Coletavel:
		item_coletavel = null
