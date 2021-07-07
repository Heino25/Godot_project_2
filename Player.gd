extends KinematicBody

const SPEED = 20
const GRAVITY = 1

func _process(delta):
	var velocity = Vector3.ZERO
	var direction = $Head.get_global_transform().basis

	if Input.is_action_pressed("forward"): velocity -= direction.z
	if Input.is_action_pressed("backward"): velocity += direction.z
	if Input.is_action_pressed("right"): velocity += direction.x
	if Input.is_action_pressed("left"): velocity -= direction.x
	
	move_and_slide(velocity.normalized() * SPEED)
