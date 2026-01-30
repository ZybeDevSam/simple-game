extends CharacterBody2D

@export var speed := 600
var angular_speed = PI
var can_shoot: bool = true

signal laser(pos)

func _ready():
	position = Vector2(100, 300)

func _process(delta):
	
	var direction = Input.get_vector("left","right","up","down")
	
	position += direction * speed * delta

	move_and_slide()

	if Input.is_action_just_pressed("Shoot") and can_shoot:
		laser.emit($LaserStartPos.global_position)
		can_shoot=false
		$LaserTimer.start()

func _on_can_shoot_timeout() -> void:
	can_shoot=true
