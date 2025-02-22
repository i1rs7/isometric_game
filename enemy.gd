extends CharacterBody2D

@onready var ray_cast_1: RayCast2D = $RayCast1
@onready var ray_cast_2: RayCast2D = $RayCast2
@onready var ray_cast_3: RayCast2D = $RayCast3


const SPEED = 300.0
#const JUMP_VELOCITY = -400.0



func _physics_process(delta: float) -> void:
	var colliding_object = ray_cast_1.get_collider()
	ray_cast_2.rotation = ray_cast_1.rotation + 0.02
	ray_cast_3.rotation = ray_cast_1.rotation - 0.02
	ray_cast_1.look_at(get_global_mouse_position())
	print(colliding_object)
	#velocity = transform.x * Input.get_axis("down", "up") * speed	#print(colliding_object)
	
	# Add the gravity.
	#if not is_on_floor():
		#velocity += get_gravity() * delta
#
	## Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#var direction := Input.get_axis("ui_left", "ui_right")
	#if direction:
		#velocity.x = direction * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
#
	#move_and_slide()
