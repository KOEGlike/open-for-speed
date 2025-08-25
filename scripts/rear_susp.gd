extends Node3D

@export var wheel: Wheel

func _process(delta: float) -> void:
	var percent=wheel.spring_current_length
	percent/=wheel.spring_length
	self.rotation_degrees.z=percent*15
	print("percent: ", str(percent), " length: ",str(wheel.spring_length), " current length: ", str(wheel.spring_current_length))
