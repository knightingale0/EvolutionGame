extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_RIGHT):
		position.x += delta * 200.0;
	if Input.is_key_pressed(KEY_LEFT):
		position.x -= delta * 200.0;
	if Input.is_key_pressed(KEY_UP):
		position.y -= delta * 200.0;
	if Input.is_key_pressed(KEY_DOWN):
		position.y += delta * 200.0;
