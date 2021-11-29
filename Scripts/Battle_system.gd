extends Node2D

var note = preload("res://Scenes/Note.tscn")


func _process(delta):
	if Input.is_action_just_pressed("ui_left"):
		$Key/shape.disabled = false
		$active_keys_timer/timer_l.start()

	if Input.is_action_just_pressed("ui_down"):
		$Key2/shape.disabled = false
		$active_keys_timer/timer_d.start()

	if Input.is_action_just_pressed("ui_up"):
		$Key3/shape.disabled = false
		$active_keys_timer/timer_u.start()

	if Input.is_action_just_pressed("ui_right"):
		$Key4/shape.disabled = false
		$active_keys_timer/timer_r.start()

func _ready():
	$music.play("event")
	$beat.play("beat")



func note_1():
	var nt = note.instance()
	nt.global_position = Vector2(32,270)
	#nt.key = nt.right_key
	nt.rotation_degrees = -90
	add_child(nt)

func note_2():
	var nt = note.instance()
	nt.global_position = Vector2(96,270)
	#nt.key = nt.right_key
	nt.rotation_degrees = 180
	add_child(nt)

func note_3():
	var nt = note.instance()
	nt.global_position = Vector2(160,270)
	#nt.key = nt.right_key
	nt.rotation_degrees = 0
	add_child(nt)


func note_4():
	var nt = note.instance()
	nt.global_position = Vector2(224,270)
	#nt.key = nt.right_key
	nt.rotation_degrees = 90
	add_child(nt)

func _on_Key_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.is_in_group("note"):
		area.queue_free()


func _on_timer_l_timeout():
	$Key/shape.disabled = true


func _on_timer_d_timeout():
	$Key2/shape.disabled = true


func _on_timer_u_timeout():
	$Key3/shape.disabled = true


func _on_timer_r_timeout():
	$Key4/shape.disabled = true
