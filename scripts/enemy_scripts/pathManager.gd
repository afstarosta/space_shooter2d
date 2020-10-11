extends Node2D

var left_path
var spawn_interval = 1

func _ready():
    left_path = get_node("Path2D")
    
func spawn_enemies(number_of_enemies, enemy_scene):
    for n in number_of_enemies:
        var enemy = enemy_scene.instance()
        get_node("Path2D").call_deferred('add_child', enemy)
        yield(get_tree().create_timer(spawn_interval),"timeout")

