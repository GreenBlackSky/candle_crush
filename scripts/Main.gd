extends Node

var paused = true

signal pause
signal unpause

func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		pause_game()

func start_game():
	$StartUI.hide()
	paused = false
	emit_signal("unpause")
	
func pause_game():
	$ContinueUI.show()
	paused = true
	emit_signal("pause")
	
func continue_game():
	$ContinueUI.hide()
	paused = false
	emit_signal("unpause")
