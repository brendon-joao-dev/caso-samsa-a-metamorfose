class_name Hud
extends CanvasLayer

# Pegando elementos pelo unique name
@onready var barra_stamina: ProgressBar = %BarraStamina
@onready var inventario: VBoxContainer = %Inventario

# Nós que a HUD faz uso
@export_category("Nós associados")
@export var jogador: Personagem
@export var slot_inventario: PackedScene
@export var grupo_slots_inventario: ButtonGroup

# Variáveis alteráveis do inventário
@export_category("Dados da HUD")
@export var tamanho_slot_inventario: Vector2 = Vector2(64, 64)
@export var tamanho_slot_inventario_selecionado: Vector2 = Vector2(80, 80)

# Sinais
signal item_selecionado(indice_slot)

func _ready() -> void:
#	Conecta os sinais usados pela HUD
	jogador.stamina_mudou.connect(_mudar_barra_stamina)
	grupo_slots_inventario.pressed.connect(_controle_inventario)
	#jogador.item_adicionado.connect()
	#jogador.item_removido.connect()
	
#	Instancia os slots do inventário dinamicamente
	for i in range(jogador.slots_inventario):
		var novo_slot = slot_inventario.instantiate()
		novo_slot.button_group = grupo_slots_inventario
		inventario.add_child(novo_slot)

func _mudar_barra_stamina(nova_stamina: float) -> void:
	barra_stamina.value = nova_stamina

func _controle_inventario(slot_selecionado: BaseButton) -> void:
#	Varre os slots do inventário
	for slot in inventario.get_children():
		var animador_inventario: Tween = create_tween()
		
#		Valida se é um dos slots
		if slot is BaseButton:
#			Se for o slot selecionado anima ele
			if slot == slot_selecionado:
				animador_inventario.tween_property(slot, "custom_minimum_size", tamanho_slot_inventario_selecionado, 0.1)
#			Se não for restaura ele a seu estado padrão
			else:
				animador_inventario.tween_property(slot, "custom_minimum_size", tamanho_slot_inventario, 0.1)
