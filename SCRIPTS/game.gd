extends Node2D

@onready var Spawn = $Spawn
var player = null  

func _ready():
	player = get_tree().get_first_node_in_group("player")
	assert(player != null)
	player.global_position = Spawn.global_position
 
func _process(_delta):
	if Input.is_action_just_pressed("EXIT"):
		get_tree().quit()
	elif Input.is_action_just_pressed("RESTART"):
		get_tree().reload_current_scene()
