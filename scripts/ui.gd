extends CanvasLayer

@onready var world = $"."
@onready var health_label = $"./HealthContainer/HealthLabel"
@onready var gem_label = $"./GemContainer/GemLabel"
@onready var dialogue_box =  $"./CenterContainer/DialogueBox/DialogueContainer/Dialogue"
@onready var dialogue_container = $"./CenterContainer/DialogueBox"
@onready var fight_box = $"./FightContainer/HBoxContainer"
@onready var dialogue_done = false


@onready var j_haskell;
@onready var enemy;

var baccarat_class = load("res://scripts/baccaratmanager.gd")
var card_node = preload("res://scenes/card.tscn")


var dialogue;
var array2d_index = 0
var array_index = 0

var sequence_scene;

func change_health(new_health):
	health_label.text = "Health: " + str(new_health)

func change_gems(new_gems):
	gem_label.text = "Gems: " + str(new_gems)
	
func setup_dialogue(dialogue_2Darr, scene): 
	print("setup dialogggg")
	dialogue_container.visible = true
	array2d_index = 0
	array_index = 0
	sequence_scene = scene
	
	dialogue_done = false
	dialogue = dialogue_2Darr
	for i in dialogue[array2d_index][array_index].length():
			await get_tree().create_timer(0.05).timeout
			dialogue_box.text = dialogue_box.text + dialogue[array2d_index][array_index][i]
	dialogue_done = true

func display_next_dialogue():
	
	dialogue_done = false #prevents the player from starting the next dialogue
	dialogue_box.text = "" #resets the dialogue box
	#checks if we are at the end of the dialogue sequence
	if(array_index + 1 >= dialogue[array2d_index].size() and array2d_index + 1 >= dialogue.size()):
		sequence_scene.next_sequence()
		return
	#checks if we are at the end of the dialogue array
	if(array_index + 1 >= dialogue[array2d_index].size()):
		array_index = 0
		array2d_index += 1
	else: 
		array_index += 1
	for i in dialogue[array2d_index][array_index].length():
		await get_tree().create_timer(0.01).timeout #dialogue spead
		dialogue_box.text = dialogue_box.text + dialogue[array2d_index][array_index][i]
	dialogue_done = true

func setup_fight():
	dialogue_container.visible = false
	var baccarat = baccarat_class.new()
	for card in baccarat.get_user_hand():
		var new_card = card_node.instantiate()
		fight_box.add_child(new_card)
		new_card.setup_card(card.suit, card.facevalue)
	pass
	
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_dialogue_box_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed and dialogue_done:
			display_next_dialogue()
