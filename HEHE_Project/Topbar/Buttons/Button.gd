extends ColorRect

export (Texture)var icon_texture
export (int)var index = 0 #quit = index 1 | minimize = index 2

func _ready():
	$icon.texture = icon_texture

func _on_hb_gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT :
			if event.pressed:
				self.color = Color(1, 1, 1, 0.75)
				$icon.modulate = Color(0, 0, 0, 1)
			else:
				self.color = Color(1, 1, 1, 0)
				$icon.modulate = Color(1, 1, 1, 1)

				if index == 1:
					get_tree().quit()
				if index == 2:
					OS.window_minimized = true

func _on_hb_mouse_entered():
	self.color = Color(1, 1, 1, 0.2)

func _on_hb_mouse_exited():
	self.color = Color(1, 1, 1, 0)
