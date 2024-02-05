extends Area2D

@export var speed = 20
@onready var visible_notifier = $visibleNotifier

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_position.x += speed*delta

func _ready():
	visible_notifier.connect("screen_exited", _on_screen_exited)


func _on_visible_notifier_screen_exited():
	print("exited!")
	pass # Replace with function body.


func _on_screen_exited():
	print("exited2")
	queue_free()
	pass
