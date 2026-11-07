extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func move(delta) -> void:
	if Input.is_key_pressed(KEY_RIGHT):
		position.x += delta * 200.0;
	if Input.is_key_pressed(KEY_LEFT):
		position.x -= delta * 200.0;
	if Input.is_key_pressed(KEY_UP):
		position.y -= delta * 200.0;
	if Input.is_key_pressed(KEY_DOWN):
		position.y += delta * 200.0;

func random_move(delta) -> void:
	var dir = randi_range(0,4);
	if dir == 0:
		position.x += delta * 100.0;
	if dir == 1:
		position.x -= delta * 100.0;
	if dir == 2:
		position.y -= delta * 100.0;
	if dir == 3:
		position.y += delta * 100.0;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#move(delta)
	random_move(delta)
	
	pass
