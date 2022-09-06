@tool
extends StaticBody3D


func _ready() -> void:
	var mi := MeshInstance3D.new()
	mi.mesh = TorusMesh.new()
	mi.name = "TorusMeshInstance3D"
	add_child(mi)
	mi.set_owner(get_tree().get_edited_scene_root())
	var cs := CollisionShape3D.new()
	cs.name = "TorusCollisionShape3D"
	add_child(cs)
	cs.set_owner(get_tree().get_edited_scene_root())
	cs.make_convex_from_siblings()
	set_script(null)
