class_name Inventario
extends VBoxContainer

# Nós que o inventário usa
@export_category("Nós associados")
@export var slot_inventario: PackedScene
@export var grupo_slots_inventario: ButtonGroup

# Variáveis alteráveis do inventário
@export_category("Variáveis")
@export var tamanho_slot_inventario: Vector2 = Vector2(64, 64)
@export var tamanho_slot_inventario_selecionado: Vector2 = Vector2(80, 80)

func _ready() -> void:
#	Conecta o sinal do grupo para as animações
	grupo_slots_inventario.pressed.connect(_controle_inventario)
	
#	Instancia os slots dinamicamente
	for i in range(2):
		var novo_slot = slot_inventario.instantiate()
		novo_slot.button_group = grupo_slots_inventario
		self.add_child(novo_slot)


func _controle_inventario(slot_selecionado: BaseButton) -> void:
#	Varre os slots do inventário
	for slot in self.get_children():
		var animador_inventario: Tween = create_tween()
		
#		Valida se é um dos slots
		if slot is BaseButton:
#			Se for o slot selecionado anima ele
			if slot == slot_selecionado:
				animador_inventario.tween_property(slot, "custom_minimum_size", tamanho_slot_inventario_selecionado, 0.1)
#			Se não for restaura ele a seu estado padrão
			else:
				animador_inventario.tween_property(slot, "custom_minimum_size", tamanho_slot_inventario, 0.1)
