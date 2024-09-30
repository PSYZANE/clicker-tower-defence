extends Node

signal fire(pos)

var base_dmg: float = 1.00
var dmg: float = 5

var player_pos: Vector2
var player_max_health: float
var player_min_health: int = 0
var player_current_health: float

var level: int = 0
var current_xp: int = 0
var required_xp: int = 10
var base_xp: int = 50

func level_up() -> void:
	level += 1
	current_xp -= required_xp
	required_xp = base_xp * level

func bullet_upgrade() -> void:
	base_dmg += 0.25
	dmg *= base_dmg

func fire_bullet(pos: Vector2) -> void:
	fire.emit(pos)
