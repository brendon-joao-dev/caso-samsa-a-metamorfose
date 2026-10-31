class_name Slot
extends Button

# Informações do slot do inventário
@export_category("Dados do slot")
@export var id: int
@export var vazio: bool = true
@export var item: Dictionary
@export var icone: Texture2D

# Define a variável icone como a textura do seu ícone interno
func construtor() -> void:
	$ItemIcon.texture = icone

# Chama o construtor ao ser inciado
func _ready() -> void:
	construtor()
