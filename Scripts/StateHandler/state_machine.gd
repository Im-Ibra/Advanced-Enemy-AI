extends Node
class_name StateMachine

@export var initial_state: States
var current_state: States
var states: Dictionary = {}

func _ready() -> void:
	for child in get_children():
		if child is States:
			states[child.name.to_lower()] = child
			child.state_machine = self
	
	if initial_state:
		change_state(initial_state.name.to_lower())

func _process(delta: float) -> void:
	if current_state:
		current_state.update(delta)

func _physics_process(delta: float) -> void:
	if current_state:
		current_state.physics_update(delta)

func _input(event: InputEvent) -> void:
	if current_state:
		current_state.input_handler(event)

func change_state(new_state_name: String) -> void:
	if current_state:
		current_state.exit()
	
	current_state = states.get(new_state_name.to_lower())
	
	if current_state:
		current_state.enter()
	pass
	
