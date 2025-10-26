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
		],
		[
			"Did you hear about the festival happening in the village this weekend?",
		],
		[
			"Yes, I heard it's going to be amazing with music, food, and games.",
		],
		[
			"I can't wait to try the roasted corn and see the fireworks show.",
		],
		[
			"Same here! It's been a while since we had something this exciting.",
		],
		[
			"Do you want to meet at the town square around 6 PM?",
			"Sure, that sounds perfect. I'll bring some snacks too.",
	        "Got it! See you soon!"
		],
		[
			"Awesome! See you there, and don't forget to wear something warm.",
		]
	]
	
	player.setup_player(20)
	var gemlabel = ui.get_node("GemContainer/GemLabel")
	gemlabel.visible = true
	print("I am working ah")
	ui.setup_dialogue(dialogues1, scene)
	
func next_sequence():
	sequence += 1
	match sequence:
		1:
			ui.setup_fight()
			
func _process(delta: float) -> void:
	pass
