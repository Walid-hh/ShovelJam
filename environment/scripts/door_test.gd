extends Node2D

@export var interactable_component : InteractableComponent

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	InteractableManager.interacted.connect(func (object_interacted_with) -> void :
		if interactable_component == object_interacted_with :
			print("interacted with"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
