extends Area2D

var level: int = 0
var current_health: float
var max_health: float = 100.00

func _ready() -> void:
	Global.player_pos = global_position
	Global.player_max_health = max_health
	Global.player_current_health = max_health
	current_health = max_health


func _on_area_entered(area: Area2D) -> void:
	if "dmg" in area:
		current_health -= area.dmg
		area.queue_free()
