extends Node2D

@onready var ui = $"../UI"

var remaining_health = 20
var score = 0
var gems = 0

func setup_player(health):
	remaining_health = health

func add_score(added_score):
	score += added_score

func add_gems(added_gems):
	gems += added_gems
	ui.change_gems(gems)

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
