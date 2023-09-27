extends Sprite2D

var vspeed = 5
var hspeed = 1
var currentSpeed : Vector2
var topBounds = 0
var bottomBounds = 600
var halfSize = scale.y / 2

# Called when the node enters the scene tree for the first time.
func _ready():
	currentSpeed = Vector2(hspeed, vspeed)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move()
	handle_bounds()
	pass

func move():
	translate(currentSpeed)

func bounceVertical(isAtBottom : bool):
	print("bounce vertical")
	if (isAtBottom):
		currentSpeed.y = -vspeed
	else:
		currentSpeed.y = vspeed
		

func bounceHorizontal():
	print("bounce horizontal")
	
func handle_bounds():
	var top = position.y - halfSize
	var bottom = position.y + halfSize
	if (top < topBounds):
		bounceVertical(false)
	if (bottom > bottomBounds):
		bounceVertical(true)
