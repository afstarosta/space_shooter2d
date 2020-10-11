extends Node2D

onready var enemy = load('res://scenes/enemy_scenes/enemy.tscn')

func _ready():
    get_node("pathManager").spawn_enemies(5, enemy)
