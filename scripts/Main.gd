extends Node


func _process(delta):
	var player_position = $Player.transform.origin
	for caster in $ShadowCasters.get_children():
		caster.get_node('Shadow').look_at(player_position, Vector3.UP)
