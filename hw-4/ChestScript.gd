extends Area2D

@export var closed_texture: Texture2D
@export var open_texture: Texture2D

var opened = false

func _ready():
	$Sprite2D.texture = closed_texture

func interact():
	if opened:
		return
	opened = true
	$Sprite2D.texture = open_texture
