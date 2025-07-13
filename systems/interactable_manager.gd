extends Node
signal interacted(object)

func handle_interaction(object) -> void :
	interacted.emit(object)
