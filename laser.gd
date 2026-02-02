extends Area2D

@export var speed = 500

func _ready() -> void:
	if speed == null:
		speed = 500
	var tween = create_tween()
	tween.tween_property($Sprite2D, 'scale', Vector2(1,1), 0.2).from(Vector2(0,0))
# 	await get_tree().create_timer(5.0).timeout
# 	queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var sp = speed if speed != null else 500
	position.y -= sp * delta
