@tool
extends CollisionShape3D

var old_radius := 0.5
var old_height := 2.0
var cylinder_mesh : CylinderMesh


func _enter_tree() -> void:
	if !Engine.is_editor_hint():
		set_script(null)


func _process(delta) -> void:
	if !shape.is_class("CylinderShape3D"):
		return
	
	if shape.radius != old_radius:
		cylinder_mesh.top_radius = shape.radius
		cylinder_mesh.bottom_radius = shape.radius
		old_radius = shape.radius
		return
	
	if shape.height != old_height:
		cylinder_mesh.height = shape.height
		old_height = shape.height
