extends Node2D

func _process(delta):
    get_parent().offset += delta * 100
