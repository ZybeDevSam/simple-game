extends Area2D

var meteor_speed : int
var meteor_direction: float
var meteor_rotation: int

func _ready():
	var rng := RandomNumberGenerator.new()
	
	var texture : String = "res://PNG/Meteors/meteorBrown_big" + str(rng.randi_range(1,4)) +".png"
	$MeteorImage.texture = load(texture)

	var width = get_viewport().get_visible_rect().size[0]
	var randomX = rng.randi_range(0, width)
	var randomY = rng.randi_range(-150, -50)

	position = Vector2(randomX, randomY)

	meteor_speed = rng.randi_range(200,600)

	meteor_direction = rng.randf_range(-1,1)

	meteor_rotation = rng.randi_range(0,359)

	await get_tree().create_timer(10.0).timeout
	queue_free()


func _process(delta):
	position += Vector2(meteor_direction,1.0) * meteor_speed * delta
	rotation_degrees += meteor_rotation * delta

func _on_body_entered(body: Node2D) -> void:
	print("meteor entered")
	print(body)
