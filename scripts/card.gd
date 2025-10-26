class_name card

var suit
var facevalue

func get_suit():
	return suit

func get_facevalue():#
	return facevalue

func _init(suit,facevalue):
	self.suit=suit
	self.facevalue=facevalue
