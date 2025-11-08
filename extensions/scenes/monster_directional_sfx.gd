extends "res://scenes/monster_directional_sfx.gd"

@onready var CC = ModLoader.get_node("ZackeryRSmith-CustomChallenges")

func play_sound() -> void:
	if CC.challenges.get("deadly_quiet"):
		return
	super()
