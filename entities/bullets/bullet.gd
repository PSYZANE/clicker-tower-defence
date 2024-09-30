extends Area2D

@onready var dmg: float = Global.dmg

@export var speed: int = 600
var direction: Vector2 = Vector2.RIGHT

func _process(delta: float) -> void:
	position += direction * speed * delta

func _on_area_entered(area: Area2D) -> void:
	if "health" in area:
		area.health -= dmg
	queue_free()


func _on_lifetime_timeout() -> void:
	queue_free()
