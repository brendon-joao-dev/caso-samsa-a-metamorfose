class_name Slot
extends Button

@export_category("Dados do slot")
@export var id: int
@export var vazio: bool = true
@export var item: Coletavel
@export var icone: Texture2D

func construtor() -> void:
	$ItemIcon.texture = icone

func _ready() -> void:
	construtor()
