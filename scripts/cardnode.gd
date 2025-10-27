extends Control

@onready var top_left_number = $'./CardSprite/TopLeftNumber'
@onready var top_right_number = $'./CardSprite/TopRightNumber'
@onready var bottom_left_number = $'./CardSprite/BottomLeftNumber'
@onready var bottom_right_number = $'./CardSprite/BottomRightNumber'

@onready var numbers = []
@onready var suits = []

@onready var spades = preload("res://card_related/spades.png")
@onready var diamonds = preload("res://card_related/diamonds.png")
@onready var clubs = preload("res://card_related/clubs.png")
@onready var hearts = preload("res://card_related/hearts.png")

@onready var top_left_suit = $'./CardSprite/TopLeftSuit'
@onready var top_right_suit = $'./CardSprite/TopRightSuit'
@onready var bottom_left_suit = $'./CardSprite/BottomLeftSuit'
@onready var bottom_right_suit = $'./CardSprite/BottomRightSuit'
@onready var middle_suit = $'./CardSprite/MiddleSuit'

func setup_card(suit, value):
	var color
	if suit == 0 or suit == 1: # 0 is hearts 1 is diamonds 2 is spades 3 is clubs
		color = 0 
	else: 
		color = 1
	if color == 0:
		for number in numbers:
			number.add_theme_color_override("font_color", Color(0.925, 0.102, 0.106, 1.0))
	else:
		for number in numbers:
			number.add_theme_color_override("font_color", Color(0.0, 0.0, 0.0, 1.0)) 
	for number in numbers: #enderin verdiği api'a göre yap
		number.text = str(value)
	for each_suit in suits:
		if suit == 0:
			each_suit.texture = hearts
		if suit == 1:
			each_suit.texture = diamonds
		if suit == 2:
			each_suit.texture = spades
		if suit == 3: 
			each_suit.texture = clubs
		
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	numbers.append(top_left_number)
	numbers.append(top_right_number)
	numbers.append(bottom_left_number)
	numbers.append(bottom_right_number)
	
	suits.append(top_left_suit)
	suits.append(top_right_suit)
	suits.append(bottom_left_suit)
	suits.append(bottom_right_suit)
	suits.append(middle_suit)

 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
