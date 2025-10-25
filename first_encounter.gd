extends Node2D

@onready var ui = $"../../UI" #to manipulate the UI
@onready var player = $"../../Player"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player.setup_player(20)
	ui.get_node("GemContainer/GemLabel")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
