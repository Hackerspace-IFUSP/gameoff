extends KinematicBody2D
class_name Entity

export var maxSpeed: float = 40.0

var velocity: Vector2 = Vector2(0, 0)

func _ready():
	pass

func _physics_process(_delta):	
	move_and_slide(self.velocity, Vector2.UP)
	return 0
