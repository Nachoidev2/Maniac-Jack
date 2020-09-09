extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if "Player" in body.name:
		$Puerta.visible = true
		$"Player/Audio del nivel".stop()
		$Player/Win.play()
		get_tree().change_scene("res://Escenas/FinDelJuego.tscn")

