extends CanvasLayer

@onready var gem_label = $"./GemContainer/GemLabel"

func change_gems(new_gems):
	gem_label.text = "Gems: " + str(new_gems)

func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
