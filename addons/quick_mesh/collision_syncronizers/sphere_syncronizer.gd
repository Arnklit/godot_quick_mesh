@tool
extends CollisionShape3D

var old_radius := 0.5
var sphere_mesh : Mesh


func _enter_tree() -> void:
	if !Engine.is_editor_hint():
		set_script(null)


func _process(delta) -> void:
	if !shape.is_class("SphereShape3D"):
		return
	
	if shape.radius != old_radius:
		sphere_mesh.radius = shape.radius
		sphere_mesh.height = shape.radius * 2.0
		old_radius = shape.radius
		return
