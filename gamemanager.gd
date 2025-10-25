extends Node

var game_scene: Node = null
var world_scene: Node = null

#this is to ensure that the game scene is not accessed before it is loaded
func register_game_scene(scene) -> void: 
	game_scene = scene
	world_scene = scene.get_node_or_null("World")
	if world_scene:
		var encounter_1 = preload("res://first_encounter.tscn").instantiate()
		world_scene.add_child(encounter_1)


func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
