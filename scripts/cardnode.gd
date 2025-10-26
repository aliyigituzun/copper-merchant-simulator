extends Node2D

@onready var top_left_number = $'./CardSprite/TopLeftNumber'
@onready var top_right_number = $'./CardSprite/TopRightNumber'
@onready var bottom_left_number = $'./CardSprite/BottomLeftNumber'
@onready var bottom_right_number = $'./CardSprite/BottomRightNumber'

@onready var numbers = []

@onready var spades = preload("res://card_related/spades.png")
@onready var diamonds = preload("res://card_related/diamonds.png")
@onready var clubs = preload("res://card_related/clubs.png")
@onready var hearts = preload("res://card_related/hearts.png")



func setup_card(suite, colour, value):
	if colour == 1:
		for number in numbers:
			number.theme_override_colors.font_colur = Color(0.925, 0.102, 0.106, 1.0)
	else:
		for number in numbers:
			number.theme_override_colors.font_colur = Color(0.0, 0.0, 0.0, 1.0)	
	for number in numbers: #enderin verdiği api'a göre yap
		number.text = value
		
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	numbers.append(top_left_number)
	numbers.append(top_right_number)
	numbers.append(bottom_left_number)
	numbers.append(bottom_right_number)
 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
