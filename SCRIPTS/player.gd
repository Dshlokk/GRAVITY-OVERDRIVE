extends CharacterBody2D

@export var speed = 300

func _physics_process(delta):
	var direction = Vector2(
		Input.get_axis("move_left", "move_right"),
		Input.get_axis("move_up", "move_down"),
		)
	velocity = Vector2(direction.x * speed, direction.y * speed)
	move_and_slide()
