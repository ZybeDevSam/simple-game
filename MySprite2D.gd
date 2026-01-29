extends CharacterBody2D

@export var speed := 600
var angular_speed = PI

func _ready():
	position = Vector2(100, 300)

func _process(delta):
	
	var direction = Input.get_vector("left","right","up","down")
	
	position += direction * speed * delta

	move_and_slide()
