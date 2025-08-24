extends Node3D
@onready var motorcycle: Vehicle = $".."
@onready var rear_right_raycast: Wheel = $"../RearRightRaycast"

func _process(delta: float) -> void:
	var angle=motorcycle.rear_axle.suspension_compression_right/15
	print("compression: ", str(motorcycle.rear_axle.suspension_compression_right), "angle: ", str(angle))
	self.rotation_degrees.z=angle
