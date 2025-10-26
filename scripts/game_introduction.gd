extends Control

@onready var label = $'./Label'
@onready var game_logo = $"./GameLogo"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var end_position = Vector2(-300.0, -300.0)
	var tween = get_tree().create_tween()
	tween.tween_property(label, "position", end_position, 1.0)
	await tween.finished
	tween.kill()
	await get_tree().create_timer(1).timeout
	label.visible = false
	
	var tween1 = get_tree().create_tween()
	tween1.tween_property(game_logo, "modulate:a", 1.0, 1.0)
	
	await get_tree().create_timer(3).timeout
	print("I am the one who calls next dialogue")
	GameManager.next_scene()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
