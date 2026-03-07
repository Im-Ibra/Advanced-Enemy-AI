extends States
class_name IdleState

func enter():
	print("Currently Idle")

func update(delta: float):
	if Global.on_enemy_area:
		state_machine.change_state("Scouting")
