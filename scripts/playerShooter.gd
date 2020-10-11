extends Node2D

var shooting_cooldown = 0.2
var current_cooldown = 0.0

func _process(delta):
    update_cooldown(delta)
    if(is_firing() and is_off_cooldown()):
        shoot()
        
func is_firing():
    return Input.is_action_pressed('ui_fire')

func shoot():
    print('pew')
    reset_cooldown()

func reset_cooldown():
    current_cooldown = 0.0

func update_cooldown(delta):
    current_cooldown += 1 * delta

func is_off_cooldown():
    return current_cooldown >= shooting_cooldown
