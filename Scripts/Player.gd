extends CharacterBody2D


@export var speed = 16*3

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	
	#look_at(get_global_mouse_position())		#rotates player to look at mouses

func _physics_process(delta):
	get_input()
	move_and_slide()
