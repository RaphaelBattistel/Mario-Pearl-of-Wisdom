extends Node2D

var end_time := 305.63
var loop_time := 2.468
var timing : float
@onready var music = $AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	music.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	timing = music.get_playback_position()
	if timing >= end_time:
		music.seek(loop_time)
