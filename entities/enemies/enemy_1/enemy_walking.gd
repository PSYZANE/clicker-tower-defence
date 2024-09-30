extends Area2D

var cost: int = 1
var target: Vector2
var direction: Vector2 = Vector2.RIGHT

@export var speed: int = 200
@export var damage: int
@export var health: int = 10
@export var dmg: int = 10

func _ready() -> void:
	target = Global.player_pos

func _process(_delta: float) -> void:
	direction = (target-global_position).normalized()
	position += direction * speed * _delta
	
	if health <= 0:
		queue_free()
