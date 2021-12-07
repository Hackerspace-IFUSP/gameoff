extends Node

var player_position = Vector2(210,100)
var music = 0
var music_counter = 0
var dancers = 0
var chalanges = 0
var days = 0 
var honey = 50
var polen = 0

var dancer1 = 0
var dancer2 = 0
var dancer3 = 0
var dancer4 = 0 

var level1 = 0
var level2 = 0
var level3 = 0 
var level4 = 0

func _ready():
	pass

func _process(_delta):
	if honey > 999:
		honey = 999
	
	if polen > 999:
		polen = 999
