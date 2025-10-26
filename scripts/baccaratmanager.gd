class_name baccaratmanager

var card_class = load("res://scripts/card.gd")
var user_hand = []
var enemy_hand = []
var deck = []

func _init():
	init_deck()
 
func init_deck():
	deck.resize(52)
	for s in range(4):
		for n in range(13):
			deck[s*13+n]=card_class.new(s,n)
	init_player_hands()

func init_player_hands():
	for card_num in range(4):
		var temp_num=randi()%deck.size()
		var temp_card=deck[temp_num]
		user_hand.append(temp_card	)
		deck.remove_at(temp_num)
	for dassa in range(4):
		var temp_num=randi()%deck.size()
		var temp_card=deck[temp_num]
		enemy_hand.append(temp_card)
		deck.remove_at(temp_num)
 
func get_user_hand():
	return user_hand
func get_enemy_hand():
	return enemy_hand
func user_play_card(card1, card2):
	var damage=user_hand[card1].get_facevalue()+user_hand[card2].get_facevalue()
	if card1 > card2:
		user_hand.remove_at(card1)
		user_hand.remove_at(card2)
	else:
		user_hand.remove_at(card2)
		user_hand.remove_at(card1)
	populate_hands()
	return damage
func enemyplaycard(card1, card2):
	var damage = enemy_hand[card1].get_facevalue() + enemy_hand[card2].get_facevalue()
	if card1 > card2:
		enemy_hand.remove_at(card1)
		enemy_hand.remove_at(card2)
	else:
		enemy_hand.remove_at(card2)
		enemy_hand.remove_at(card1)
	populate_hands()
	return damage

func populate_hands():
	for isd in range(4-user_hand.size()):
		var tempnum=randi()%deck.size()
		var tempcard=deck[tempnum]
		user_hand.append(tempcard)
		deck.remove_at(tempnum)
	for isd in range(4-enemy_hand.size()):
		var temp_num=randi()%deck.size()
		var temp_card=deck[temp_num]
		enemy_hand.append(temp_card)
		deck.remove_at(temp_num)
