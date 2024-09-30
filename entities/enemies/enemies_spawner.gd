extends Node

@export var enemies:Array[PackedScene]
@export var path_follow_2d: PathFollow2D 

@onready var spawn_timer: Timer = $spawn_timer
@onready var enemies_collection: Node = $"../enemies_collection"

var enemies_types: int

func _ready() -> void:
	enemies_types = enemies.size()


func _on_spawn_timer_timeout() -> void:
	if enemies_types == 1:
		var enemy = enemies[0].instantiate()
		path_follow_2d.progress_ratio = randf_range(0, 1)
		enemy.global_position = path_follow_2d.position
		enemies_collection.add_child(enemy)
