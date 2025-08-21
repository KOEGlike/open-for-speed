extends VehicleBody3D

@export var max_steer=0.9
@export var engine_power=1000

func _physics_process(delta: float) -> void:
	#axis_lock_angular_x=true
	#axis_lock_angular_y=true
	#wwwwwwwwaxis_lock_angular_z=true
	steering=move_toward(steering, Input.get_axis("right","left") * max_steer, delta*10)
	engine_force=Input.get_axis("down", "up") * engine_power
	
# func _integrate_forces(state: PhysicsDirectBodyState3D) -> void:
	
