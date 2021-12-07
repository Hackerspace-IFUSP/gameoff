extends Entity

enum{on_beat,out_beat}
var beat = on_beat
var beat_index = 0

func _ready():
	pass

func _process(_delta):
	if beat == on_beat:
		beat_index += 1
		if beat_index >= 30:
			beat = out_beat
			$Sprite.position.y -= 1
	elif beat == out_beat:
		beat_index -= 1
		if beat_index <= 0:
			beat = on_beat
			$Sprite.position.y += 1
	

func _physics_process(delta):
	self.move(delta)
	pass

func move(_delta):
	self.velocity.x = (Input.get_action_strength("move_right") - Input.get_action_strength("move_left")) * self.maxSpeed
	self.velocity.y = (Input.get_action_strength("move_down") - Input.get_action_strength("move_up")) * self.maxSpeed

	if Input.is_action_just_pressed("move_left"):
		$Sprite.scale.x = 1
	elif Input.is_action_just_pressed("move_right"):
		$Sprite.scale.x = -1
