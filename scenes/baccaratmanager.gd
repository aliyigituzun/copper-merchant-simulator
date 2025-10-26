class_name baccaratmanager

var card_class = load("res://scenes/card.gd")
var userhand=[]
var enemyhand=[]
var deck=[]

func _init():
	initdeck()
 
func initdeck():
	deck.resize(52)
	for s in range(4):
		print("S="+str(s))
		for n in range(13):
			print("N="+str(n))
			deck[s*13+n]=card_class.new(s,n)
	initplayerhands()

func initplayerhands():
	for cardnum in range(4):
		var tempnum=randi()%deck.size()
		var tempcard=deck[tempnum]
		userhand.append(tempcard	)
		deck.remove_at(tempnum)
	for dassa in range(4):
		var tempnum=randi()%deck.size()
		var tempcard=deck[tempnum]
		enemyhand.append(tempcard)
		deck.remove_at(tempnum)
 
func getuserhand():
	return userhand
func getenemyhand():
	return enemyhand
func userplaycard(card1, card2):
	var damage=userhand[card1].getsuit()+userhand[card2].getsuit()
	if card1 > card2:
		userhand.remove_at(card1)
		userhand.remove_at(card2)
	else:
		userhand.remove_at(card2)
		userhand.remove_at(card1)
	populatehands()
	return damage
func enemyplaycard(card1, card2):
	var damage=enemyhand[card1].getsuit()+enemyhand[card2].getsuit()
	if card1 > card2:
		enemyhand.remove_at(card1)
		enemyhand.remove_at(card2)
	else:
		enemyhand.remove_at(card2)
		enemyhand.remove_at(card1)
	populatehands()
	return damage

func populatehands():
	for isd in range(4-userhand.size()):
		var tempnum=randi()%deck.size()
		var tempcard=deck[tempnum]
		userhand.append(tempcard)
		deck.remove_at(tempnum)
	for isd in range(4-enemyhand.size()):
		var tempnum=randi()%deck.size()
		var tempcard=deck[tempnum]
		enemyhand.append(tempcard)
		deck.remove_at(tempnum)
