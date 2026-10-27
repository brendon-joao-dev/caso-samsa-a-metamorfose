class_name Personagem
extends CharacterBody2D

# Variáveis de inicialização
# Pega o próprio AnimationTree como controlador
@onready var controlador_animacoes: AnimationTree = $ControladorAnimacoes

# Variáveis de movimento
var direcao: Vector2
var ultima_direcao: Vector2
var velocidade: float

# Variáveis de condição

# Variáveis alteravéis
@export_category("Variáveis")
@export var velocidade_normal: float = 100.0
@export var velocidade_correndo: float = 150.0
@export var stamina_max = 100.0
@export var stamina_min: float = 0.0
@export var stamina_atual: float
@export var passos_stamina: float = 20

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
	
	if direcao != Vector2.ZERO and Input.is_action_pressed("correr") and stamina_atual > 0:
		velocidade = velocidade_correndo
		
		stamina_atual -= passo_stamina * _delta
		stamina_atual = max(0.0, stamina_atual)
		
		stamina_mudou.emit(stamina_atual)
	else:
		velocidade = velocidade_normal
		
	velocity = direcao * velocidade
	move_and_slide()
	
	atualizar_animacoes()

func atualizar_animacoes():
	var andando = direcao != Vector2.ZERO
	var correndo = andando and Input.is_action_just_pressed("correr")
	var interagindo = Input.is_action_just_pressed("interagir")
	
	controlador_animacoes.set("parameters/conditions/esta_parado", !andando)
	controlador_animacoes.set("parameters/conditions/esta_andando", andando)
	controlador_animacoes.set("parameters/conditions/esta_correndo", correndo)
	controlador_animacoes.set("parameters/conditions/esta_interagindo", interagindo)
	
	var blend_dir = direcao if direcao != Vector2.ZERO else ultima_direcao
	
	controlador_animacoes.set("parameters/idle/blend_position", blend_dir)
	controlador_animacoes.set("parameters/walk/blend_position", blend_dir)
	controlador_animacoes.set("parameters/run/blend_position", blend_dir)
	controlador_animacoes.set("parameters/interact/blend_position", blend_dir)
