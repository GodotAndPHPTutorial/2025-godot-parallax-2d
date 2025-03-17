extends AnimationPlayer

@onready var bird_animator = $"."

func _physics_process(delta: float) -> void:
	if !bird_animator.is_playing():
		bird_animator.play("fly")
	
