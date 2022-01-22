extends Control

var paused = true

signal pause
signal unpause

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		if paused:
			unpause()
		else:
			pause()

func pause():
	$ContinueUI.show()
	paused = true
	emit_signal("pause")
	
func unpause():
	$StartUI.hide()
	$ContinueUI.hide()
	paused = false
	emit_signal("unpause")
