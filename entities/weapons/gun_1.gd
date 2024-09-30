extends Node2D

@onready var dmg: float = Global.dmg
@onready var timer: Timer = $Timer
@onready var muzzle: Marker2D = $muzzle

func _process(_delta: float) -> void:
	look_at(get_global_mouse_position())


func _on_timer_timeout() -> void:
	Global.fire_bullet(muzzle.global_position)
