class_name TrickManager

extends Node

@export var vehicle: Vehicle

func _process(_delta):
    var turns_right = int(vehicle.trick_rotated_right / (2 * PI))
    var turns_up = int(vehicle.trick_rotated_up / (2 * PI))
    if turns_right != 0:
        print("Completed ", turns_right, " full rotations to the right!")
    if turns_up != 0:
        print("Completed ", turns_up, " full rotations upwards!")