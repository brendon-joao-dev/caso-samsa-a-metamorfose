class_name Coletavel
extends Area2D

@export_category("Dados do item")
@export var id: int 
@export var nome: String
@export var sprite: Texture2D
@export var icone: Texture2D
@export var descricao: String

func _construtor() -> void:
	$Sprite.texture = sprite

func _ready() -> void:
	_construtor()
