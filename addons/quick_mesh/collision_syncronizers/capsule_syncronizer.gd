@tool
extends CollisionShape3D

var old_radius := 0.5
var old_height := 2.0
var capsule_mesh : CapsuleMesh


func _enter_tree() -> void:
	if !Engine.is_editor_hint():
		set_script(null)


func _process(delta) -> void:
	if !shape.is_class("CapsuleShape3D"):
		return
	
	if shape.radius != old_radius:
		capsule_mesh.radius = shape.radius
		old_radius = shape.radius
		return
	
	if shape.height != old_height:
		capsule_mesh.height = shape.height
		old_height = shape.height
