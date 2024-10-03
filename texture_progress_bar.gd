extends TextureProgressBar


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	max_value = 100
	min_value = 0
	value = max_value

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_down"):
		value -= 10
		value = clamp(value, min_value, max_value)
		print("Value decreased to: ", value)
	if Input.is_action_just_pressed("ui_up"):
		value += 10
		value = clamp(value, min_value, max_value)
		print("Value increased to: ", value)
