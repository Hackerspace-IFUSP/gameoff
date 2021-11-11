extends Entity

func _ready():
	pass

func _physics_process(delta):
	self.move(delta)
	pass

func move(delta):
	self.velocity.x = (Input.get_action_strength("move_right") - Input.get_action_strength("move_left")) * self.maxSpeed
	self.velocity.y = (Input.get_action_strength("move_down") - Input.get_action_strength("move_up")) * self.maxSpeed
	pass
