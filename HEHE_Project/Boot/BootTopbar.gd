extends Control

var drag_point

func _ready():
	set_process(false)

func _on_Topbar_gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			set_process(true)
			if event.pressed:
				drag_point = - (event.global_position)
			else:
				drag_point = null

func _process(_delta):
	if drag_point != null:
		OS.window_position = (get_viewport().get_mouse_position() + OS.window_position) + drag_point
	else:
		set_process(false)
