extends Node3D

@export var wheel: Wheel

func _process(delta: float) -> void:
	rotate_object_local(Vector3.UP, wheel.rotation.y - transform.basis.get_euler().y)
