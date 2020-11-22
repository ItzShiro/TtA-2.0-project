extends KinematicBody2D

export var TopDown : bool

export var Speed : int
var Velocity = Vector2()

func get_input():
	
	Velocity = Vector2()
	
	if TopDown == true:
	
		if Input.is_action_pressed("move_up"):
			Velocity.y -= 1
		if Input.is_action_pressed("move_down"):
			Velocity.y += 1
		if Input.is_action_pressed("move_left"):
			Velocity.x -= 1
		if Input.is_action_pressed("move_right"):
			Velocity.x += 1
	else:
	
		if Input.is_action_pressed("move_left"):
			Velocity.x -= 1
		if Input.is_action_pressed("move_right"):
			Velocity.x += 1

func _physics_process(delta):
	get_input()
	Velocity = Velocity.normalized() * Speed
	Velocity = move_and_slide(Velocity)
	Velocity = Vector2.ZERO
