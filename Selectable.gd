extends Area2D

var target
var speed = 75
var move_vector

func _ready():
	set_fixed_process(true)
	target = get_parent().get_pos()

func _input_event(viewport, event, shape_idx):
	if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT and event.pressed:
		print("Clicked")

func _set_target(var pos):
	target = pos

func _fixed_process(delta):
	
	move_vector = target - get_parent().get_global_pos()
	if move_vector.length() < 1:
		target = get_parent().get_pos()
	else :
		get_parent().move(move_vector.normalized() * delta * speed)
