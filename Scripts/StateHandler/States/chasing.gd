extends States
class_name ChasingState

@onready var enemy: CharacterBody2D = $"../.."
@onready var chasing_timer: Timer = $"../../Chasing Timer"
var velocity = Vector2()
var mouse_pos = null

func enter():
	print("chasing")

func physics_update(delta: float):
	velocity = Vector2(0, 0)
	mouse_pos = get_viewport().get_global_mouse_position()
	var direction = (mouse_pos - enemy.position).normalized()
	velocity = (direction * enemy.chase_speed)
	
	enemy.move_and_slide()
