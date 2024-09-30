extends CanvasLayer

@onready var xp_bar: ProgressBar = $MarginContainer/xp_bar

func _ready() -> void:
	update_xp()

func update_xp() -> void:
	xp_bar.max_value = Global.required_xp
	xp_bar.value = Global.current_xp
