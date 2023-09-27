extends Sprite2D

var speed = 10
var topBounds = 0
var bottomBounds = 600
var halfSize = scale.y / 2

@export var upButton : String
@export var downButton : String
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed(upButton):
		move_up()
	if Input.is_action_pressed(downButton):
		move_down()
	handle_bounds()
		
		
func move_up():
	translate(Vector2(0, -speed))
	
func move_down():
	translate(Vector2(0, speed))

func handle_bounds():
	var top = position.y - halfSize
	var bottom = position.y + halfSize
	if (top < topBounds):
		position.y = topBounds + halfSize
		print ("Top = ", top)
	if (bottom > bottomBounds):
		print ("Bottom = ", bottom)
		position.y = bottomBounds - halfSize
