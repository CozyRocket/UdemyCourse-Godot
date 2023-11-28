extends CanvasLayer

signal transition_halfway

func transition():
	$AnimationPlayer.play("in")
	await transition_halfway
	$AnimationPlayer.play("out")

func emit_tranisiton_halfway():
	transition_halfway.emit()

func transition_to_scene(scene_path: String):
	transition()
	await transition_halfway
	get_tree().change_scene_to_file(scene_path)
