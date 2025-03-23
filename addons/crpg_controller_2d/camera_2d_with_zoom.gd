extends Camera2D

## A very simple camera script to allow for zooming in and out.

## Extents of zooming
@export var zoom_limit: Vector2 = Vector2(0.6,1.0)
## How much to zoom per input action
@export var zoom_factor: float = 0.05

@export_group("Smoothed Zooming")
## If true, view will be smoothly zoomed by zoom_speed
@export var smoothing: bool = true
## Speed smoothed zooming moves toward goal
@export var zoom_speed: float = 0.005

## Input map actions associated with the camera
@export_group("Actions")
## Input map action for zooming in
@export var zoom_in: String = "zoom_in"
## Input map action for zooming out
@export var zoom_out: String = "zoom_out"

var _goal: float

func _ready():
	_goal = zoom.x

func _process(delta: float):
	if Input.is_action_just_pressed(zoom_in):
		if smoothing:
			_goal = _goal + zoom_factor
		else:
			zoom.x += zoom_factor
			zoom.x = clampf(zoom.x,zoom_limit.x,zoom_limit.y)
			zoom.y = zoom.x
	if Input.is_action_just_pressed(zoom_out):
		if smoothing:
			_goal = _goal - zoom_factor
		else:
			zoom.x -= zoom_factor
			zoom.x = clampf(zoom.x,zoom_limit.x,zoom_limit.y)
			zoom.y = zoom.x
	if smoothing:
		_goal = clampf(_goal,zoom_limit.x,zoom_limit.y)
		zoom.x = move_toward(zoom.x,_goal,zoom_speed)
		zoom.y = zoom.x
