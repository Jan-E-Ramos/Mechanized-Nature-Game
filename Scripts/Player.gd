extends CharacterBody2D


@export var speed: float = 64
@export var accel: float = 64*(1/10)




func _physics_process(delta):
	var input_direction: Vector2 = Input.get_vector("left", "right", "up", "down")
	velocity.x = move_toward(velocity.x, speed*input_direction.x, accel)
	velocity.y = move_toward(velocity.y, speed*input_direction.y, accel)

	move_and_slide()
