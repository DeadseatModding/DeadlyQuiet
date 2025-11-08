extends Node

@onready var CC = ModLoader.get_node("ZackeryRSmith-CustomChallenges")

const ZACKERYRSMITH_DQ_DIR := "ZackeryRSmith-DeadlyQuiet"
const ZACKERYRSMITH_DQ_LOG_NAME := "ZackeryRSmith-DeadlyQuiet:Main"

var mod_dir_path := ModLoaderMod.get_unpacked_dir().path_join(
	ZACKERYRSMITH_DQ_DIR
)

func _init() -> void:
	var extensions_dir_path = mod_dir_path.path_join("extensions")
	ModLoaderMod.install_script_extension(
		extensions_dir_path.path_join("scenes/monster_directional_sfx.gd")
	)

func _ready() -> void:
	var challenge = CC.CustomChallenge.new()
	challenge.name = "deadly_quiet"
	challenge.description = "The monster no longer plays any audio queues"
	challenge.icon_default = CC.atlas("res://art/ui/challenge_mode/challenge_icons/Silence_Challenge.png", Rect2(0, 0, 32, 32))
	challenge.icon_selected = CC.atlas("res://art/ui/challenge_mode/challenge_icons/Silence_Challenge.png", Rect2(32, 0, 32, 32))
	CC.add_challenge(challenge)
