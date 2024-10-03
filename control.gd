extends Control

@onready var radial_progress: RadialProgress = $RadialProgress

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	radial_progress.max_value = 100
	radial_progress.progress = radial_progress.max_value

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_down"):
		radial_progress.progress -= 10
		radial_progress.progress = clamp(radial_progress.progress, 0, radial_progress.max_value)
		print("Value decreased to: ", radial_progress.progress)
	if Input.is_action_just_pressed("ui_up"):
		radial_progress.progress += 10
		radial_progress.progress = clamp(radial_progress.progress, 0,radial_progress.max_value)
		print("Value increased to: ", radial_progress.progress)
