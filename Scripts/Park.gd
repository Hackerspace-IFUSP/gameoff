extends Node

enum{max_shadows,min_shadows}
var shadows = max_shadows
var shadow_index = 0 


enum{top_position,bot_position}
onready var objects_position = top_position
var position_index = 0

func _ready():
	pass
	
	
func _process(delta):
	shadows()
	persons_position()
	
	


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
