extends Control

@onready var scene = $"."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_game_start_button_button_down() -> void:
	var game_scene = load("res://scenes/game.tscn").instantiate()
	GameManager.register_game_scene(game_scene)
	get_tree().root.add_child(game_scene)
	get_tree().root.remove_child(scene)


func _on_quit_button_button_down() -> void:
	get_tree().quit()
