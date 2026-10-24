class_name Personagem
extends CharacterBody2D

var direcao: Vector2
var ultima_direcao: Vector2

# Pega o próprio AnimationTree como controlador
@onready var controlador_animacoes: AnimationTree = $ControladorAnimacoes

@export_category("Variáveis")
@export var speed = 100.0

func _ready() -> void:
#	Garante que o controlador de animações está ativo
	controlador_animacoes.active = true
	
func _physics_process(_delta: float) -> void:
	direcao = Input.get_vector("mover_esquerda", "mover_direita", "mover_cima", "mover_baixo")
	
	if direcao != Vector2.ZERO:
		ultima_direcao = direcao
		
	velocity = direcao * speed
	move_and_slide()
	
	atualizar_animacoes()

func atualizar_animacoes():
#	Condições
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
