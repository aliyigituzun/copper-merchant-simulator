extends Node

var game_scene: Node = null
var world_scene: Node = null
var player_scene: Node = null

var scene = 0

#this is to ensure that the game scene is not accessed before it is loaded
func register_game_scene(scene) -> void: 
	print("BROTHER YOU ARE WORKING WTF")
	game_scene = scene
	world_scene = scene.get_node_or_null("World")
	if world_scene:
		var game_introduction = preload("res://game_introduction.tscn").instantiate()
		world_scene.add_child(game_introduction)
		#var first_encounter = preload('res://first_encounter.tscn').instantiate()
		#world_scene.add_child(first_encounter)

func next_scene() -> void: 
	scene +=1
	match scene: 
		1:
			var first_encounter = preload('res://first_encounter.tscn').instantiate()
			var world_scene_child = world_scene.get_child(0)
			world_scene.remove_child(world_scene_child)
			world_scene_child.queue_free()
			world_scene.add_child(first_encounter)

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
