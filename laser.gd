extends Area2D

@export var speed = 500

# func _ready() -> void:
# 	await get_tree().create_timer(5.0).timeout
# 	queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y -= speed * delta
