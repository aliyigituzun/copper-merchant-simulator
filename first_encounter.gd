extends Node2D

@onready var ui = $"../../UI" #to manipulate the UI
@onready var player = $"../../Player"
@onready var scene =  $"."

var sequence = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var dialogues1 = [
		[
			"Hey there! How are you doing today?",
			"I'm doing great, thanks for asking!",
	        "Do you want to grab a coffee later?"
		]
	]
	
	player.setup_player(20)
	var gemlabel = ui.get_node("GemContainer/GemLabel")
	gemlabel.visible = true
	ui.setup_dialogue(dialogues1, scene)
	
func next_sequence():
	sequence += 1
	match sequence:
		1:
			ui.setup_fight()
			
func _process(delta: float) -> void:
	pass
