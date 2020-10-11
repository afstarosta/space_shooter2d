extends Node2D

var speed = 400
var player_bounds
var target_node
var screen_size

func _ready():
    target_node = get_parent()
    screen_size = get_viewport_rect().size
    player_bounds = Vector2(0, screen_size.y / 2)
    
    
func _process(delta):
    var velocity = get_velocity_from_input()
    target_node.position += velocity * delta
    target_node.position.x = clamp(target_node.position.x, player_bounds.x, screen_size.x)
    target_node.position.y = clamp(target_node.position.y, player_bounds.y, screen_size.y)
    
func get_velocity_from_input():
    var velocity = Vector2()
    if Input.is_action_pressed('ui_right'):
        velocity.x += 1
    if Input.is_action_pressed('ui_left'):
        velocity.x -= 1
    if Input.is_action_pressed('ui_down'):
        velocity.y += 1
    if Input.is_action_pressed('ui_up'):
        velocity.y -= 1
    return velocity.normalized() * speed
