@tool
extends CollisionShape3D

var old_size := Vector3(1.0 ,1.0, 1.0)
var box_mesh : BoxMesh


func _enter_tree() -> void:
	if !Engine.is_editor_hint():
		set_script(null)


func _process(delta) -> void:
	if !shape.is_class("BoxShape3D"):
		return
	
	if shape.size != old_size:
		box_mesh.size = shape.size
		old_size = shape.size
