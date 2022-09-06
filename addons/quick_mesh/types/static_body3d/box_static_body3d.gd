@tool
extends StaticBody3D

const Syncroniser = preload("../../collision_syncronizers/box_syncronizer.gd")


func _ready() -> void:
	var mi := MeshInstance3D.new()
	mi.mesh = BoxMesh.new()
	mi.name = "BoxMeshInstance3D"
	add_child(mi)
	mi.set_owner(get_tree().get_edited_scene_root())
	var cs := CollisionShape3D.new()
	cs.shape = BoxShape3D.new()
	cs.name = "BoxCollisionShape3D"
	if ProjectSettings.has_setting("plugins/quick_mesh/add_collision_syncronizers"):
		if ProjectSettings.get_setting("plugins/quick_mesh/add_collision_syncronizers"):
			cs.set_script(Syncroniser)
			cs.box_mesh = mi.mesh
	add_child(cs)
	cs.set_owner(get_tree().get_edited_scene_root())
	set_script(null)
