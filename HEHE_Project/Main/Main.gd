extends Control

var vn1 = false
var vn2 = false
onready var vp = $bg/VideoPlayer

func _on_VideoPlayer_finished():
	video_new_pos()

func video_new_pos():
	randomize()

	var x_video_limit = OS.get_screen_size().x
	var x_pos = rand_range( -150 , (x_video_limit - 350) )

	var y_video_limit = OS.get_screen_size().y
	var y_pos = rand_range( -75 , (y_video_limit - 350) )

	var final_pos = Vector2(x_pos, y_pos)

	$bg/VideoPlayer.rect_position = final_pos

func _on_vn1_screen_entered():
	vn1 = true
	if vn2 and !vp.is_playing():
		vp.play()

func _on_vn1_screen_exited():
	vn1 = false

func _on_vn2_screen_entered():
	vn2 = true
	if vn1 and !vp.is_playing():
		vp.play()

func _on_vn2_screen_exited():
	vn2 = false
