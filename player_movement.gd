extends CharacterBody2D

var speed : float = 300
var jump_force : float = -700
var smoothness : float = 10

func _physics_process(delta: float) -> void:
	var direction = Vector2(
		Input.get_axis("ui_left", "ui_right") * speed,
		Input.get_axis("ui_up", "ui_down")
	)
	
	if !is_on_floor():
		velocity.y += get_gravity().y * delta
	elif Input.is_action_just_pressed("ui_up"):
		velocity.y = jump_force
	
	velocity.x = lerp(velocity.x, direction.x, smoothness * delta)
	
	move_and_slide()
	pass
