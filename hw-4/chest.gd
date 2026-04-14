extends Interactable

var is_opened = false

func interact(): 
	if is_opened: 
		return
	is_opened = true
	$AnimatedSprite2D.play("open")
