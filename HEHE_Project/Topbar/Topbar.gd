extends Control

onready var bg = get_parent().get_node("bg")

var drag_point

func _ready():
	bg.rect_size = OS.get_screen_size()
	bg.set_global_position(-(OS.window_position))
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
		bg.set_global_position(-(OS.window_position))
	else:
		set_process(false)
