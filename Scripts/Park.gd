extends Node2D

enum{max_shadows,min_shadows}
var shadows = max_shadows
var shadow_index = 0 


enum{top_position,bot_position}
onready var objects_position = top_position
var position_index = 0

func _ready():
	$transition.play("event")
	$Bee.global_position = GAME.player_position
	if (GAME.level1 + GAME.level2 + GAME.level3 + GAME.level4) == 4:
		get_tree().change_scene("res://Scenes/End_screen.tscn")
	
	
func _process(delta):
	shadows()
	persons_position()
	$"CanvasLayer/Hudbar/HoneyHud/Label".text = str(GAME.honey)
	$"CanvasLayer/Hudbar/PolenHud/Label2".text = str(GAME.polen)
	$"CanvasLayer/Hudbar/Bee/Label3".text = str(GAME.dancers)

func shadows():
	if shadows == max_shadows:
		shadow_index += 1
		if shadow_index >= 30:
			shadows = min_shadows
			$Shadorws.modulate.a = .5
			
	elif shadows == min_shadows:
		shadow_index -= 1
		if shadow_index <= 0:
			shadows = max_shadows
			$Shadorws.modulate.a = 1



func persons_position():
	if objects_position == top_position:
		position_index += 1
		if position_index >= 30:
			objects_position = bot_position
			$Persons.global_position.y -= 1
			
	elif objects_position == bot_position:
		position_index -= 1
		if position_index <= 0:
			objects_position = top_position
			$Persons.global_position.y += 1  
