extends Area2D

var target

func _input_event(viewport, event, shape_idx):
	if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_RIGHT and event.pressed:
		target = get_global_mouse_pos()
		get_parent().get_parent().get_node("KinematicBody2D/Area2D")._set_target(target)