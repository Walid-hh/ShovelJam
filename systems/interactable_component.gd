class_name InteractableComponent extends Area2D
var can_interact := false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	area_entered.connect(func(object_entered) -> void :
		if object_entered is Player :
			can_interact = true)
	area_exited.connect(func(object_exited) -> void :
		if object_exited is Player :
			can_interact = false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact") and can_interact:
		InteractableManager.handle_interaction(self)
