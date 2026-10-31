class_name Coletavel
extends Area2D

# Definindo dados editavéis na interface
@export_category("Dados do item")
@export var id: int 
@export var nome: String
@export var descricao: String
@export var sprite: Texture2D
@export var icone: Texture2D

# Define o sprite passado na interface como textura do Sprite2D
func _construtor() -> void:
	$Sprite.texture = sprite

# Ao iniciar, chama o construtor
func _ready() -> void:
	_construtor()

# Permite salvar as informações mesmo se liberar o nó que elas representam
func salvar() -> Dictionary:
	return {
		"id": id,
		"nome": nome,
		"descrição": descricao,
		"sprite": sprite,
		"icone": icone
		}
