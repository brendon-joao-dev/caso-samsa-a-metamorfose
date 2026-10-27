extends CanvasLayer

# Deixa selecionar o jogadorr associado na montagem do cenário
@export var jogador: Personagem

# Pega barra de stamina pelo unique name
@onready var barra_stamina: ProgressBar = %BarraStamina

func _ready() -> void:
#	Conecta o sinal do player no
	jogador.stamina_mudou.connect(_mudar_barra_stamina)

func _mudar_barra_stamina(nova_stamina: float) -> void:
	barra_stamina.value = nova_stamina
