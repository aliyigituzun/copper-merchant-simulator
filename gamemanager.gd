extends Node

var game_scene = null

#this is to ensure that the game scene is not accessed before it is loaded
func register_game_scene(scene) -> void: 
	game_scene = scene


func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
