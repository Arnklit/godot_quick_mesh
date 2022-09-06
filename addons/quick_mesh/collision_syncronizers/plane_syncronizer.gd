@tool
extends CollisionShape3D

var old_size := Vector2(2.0, 2.0)
var plane_mesh : PlaneMesh


func _enter_tree() -> void:
	if !Engine.is_editor_hint():
		set_script(null)


func _process(delta) -> void:
	if !shape.is_class("BoxShape3D"):
		return
	
	var shape_size_vec2 = Vector2(shape.size.x, shape.size.z)
	
	if shape_size_vec2 != old_size:
		plane_mesh.size = shape_size_vec2
		old_size = shape_size_vec2
		return
	
	if shape.size.y != 0.05:
		shape.size.y = 0.05;
