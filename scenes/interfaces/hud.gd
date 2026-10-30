extends CanvasLayer

# Nós que a HUD faz uso
@export_category("Nós associados")
@export var jogador: Personagem

# Pegando elementos pelo unique name
@onready var barra_stamina: ProgressBar = %BarraStamina

func _ready() -> void:
#	Conecta os sinais usados pela HUD
	jogador.stamina_mudou.connect(_mudar_barra_stamina)

func _mudar_barra_stamina(nova_stamina: float) -> void:
	barra_stamina.value = nova_stamina
