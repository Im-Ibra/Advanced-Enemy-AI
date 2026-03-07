extends States
class_name ScoutingState

@onready var scouting_timer: Timer = $"../../Scouting Timer"

func enter():
	print("Something doesn't look right")
	scouting_timer.start()

func _on_scouting_timer_timeout() -> void:
	if Global.on_enemy_area:
		state_machine.change_state("Chasing")
	else:
		state_machine.change_state("Idle")
