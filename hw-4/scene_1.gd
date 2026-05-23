extends CharacterBody2D

var nearby_interactables = []

@export var speed = 200

func _physics_process(delta):
	var direction = Vector2.ZERO
	
	if Input.is_action_just_pressed("interact"):
		print("E pressed")
		if nearby_interactables.size() > 0:
			print("found interactable")
			var target = nearby_interactables.back()
			print(target)
			target.interact()
		else:
			print("no interactable")

	direction.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	direction.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")

	direction = direction.normalized()
	velocity = direction * speed

	move_and_slide()


func _on_interaction_detector_area_entered(area):
	nearby_interactables.append(area)


func _on_interaction_detector_area_exited(area):
	nearby_interactables.erase(area)
