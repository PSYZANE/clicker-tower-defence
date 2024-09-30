extends Node2D

@onready var enemies_collection: Node = $enemies_collection

func _ready() -> void:
	Global.fire.connect(fire)

func _process(_delta: float) -> void:
	if Global.current_xp >= Global.required_xp:
		Global.level_up()

func fire(pos: Vector2) -> void:
	var bullet = Path.BULLET.instantiate()
	bullet.global_position = pos
	enemies_collection.add_child(bullet)
