extends Area2D

export(String, FILE, "*.tscn") var target_stage


func _ready():
	pass


func _on_Inicio_body_entered(body):
	if "Player" in body.name:
		get_tree().change_scene(target_stage)
		
