extends Node

export(String) var anim_to_load

func _on_AnimationPlayer_ready():
	get_node("AnimationPlayer").play(anim_to_load)
