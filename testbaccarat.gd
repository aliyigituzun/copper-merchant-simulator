extends Node
var baccaratclass = load("res://scenes/baccaratmanager.gd")
var baccarat=baccaratclass.new()


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var userhand = baccarat.getuserhand()
	var enemyhand = baccarat.getenemyhand()
	for i in range(userhand.size()):
		print(userhand[i].getfacevalue())
	baccarat.userplaycard(0,1)
	for ie in range(userhand.size()):
		print(userhand[ie].getfacevalue())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
