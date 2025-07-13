class_name Player extends Area2D

@export var max_speed := 80
const STEERING_FACTOR := 8
var velocity := Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	player_movement(delta)

func player_movement(delta : float) -> void :
	
	var direction := Input.get_vector("move_left" ,"move_right" , "move_up" , "move_down").sign().normalized()

	var desired_velocity := max_speed * direction
	var steering_vector := desired_velocity - velocity
	velocity += steering_vector * STEERING_FACTOR * delta
	position += velocity * delta
