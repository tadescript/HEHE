extends Control

func _on_yt_button_down():
	OS.shell_open("https://www.youtube.com/channel/UCS3KueekF70EfrcecEo9fbw/featured")

func _on_ig_button_down():
	OS.shell_open("https://www.instagram.com/tadescript/channel/?hl=pt-br")

func _on_tt_button_down():
	OS.shell_open("https://twitter.com/tadescript")

func _on_tiktok_button_down():
	OS.shell_open("https://www.tiktok.com/@tadescript?lang=pt-BR")

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "start":
		get_tree().change_scene("res://Main/Main.tscn")
