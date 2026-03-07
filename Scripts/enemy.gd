extends Stats

func _ready() -> void:
	pass

#func _on_vision_area_body_entered(body: Node2D) -> void:
	#Global.on_enemy_area = true
#
#func _on_vision_area_body_exited(body: Node2D) -> void:
	#Global.on_enemy_area = false

func _on_vision_area_mouse_entered() -> void:
	Global.on_enemy_area = true

func _on_vision_area_mouse_exited() -> void:
	Global.on_enemy_area = false
