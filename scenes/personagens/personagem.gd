class_name Personagem
extends CharacterBody2D

var direcao: Vector2
var ultima_direcao: Vector2

@onready var controlador_animacoes: AnimationTree = $ControladorAnimacoes

@export_category("Variáveis")
@export var SPEED = 300.0

func _ready() -> void:
	controlador_animacoes.active = true
	
func _physics_process(delta: float) -> void:
	direcao = Input.get_vector("mover_esquerda", "mover_direita", "mover_cima", "mover_baixo")
	
	if direcao != Vector2.ZERO:
		ultima_direcao = direcao
		
	velocity = direcao * SPEED
	
	move_and_slide()

func 
