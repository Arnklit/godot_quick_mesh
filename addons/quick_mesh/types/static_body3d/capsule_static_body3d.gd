@tool
extends StaticBody3D

const Syncroniser = preload("../../collision_syncronizers/capsule_syncronizer.gd")


func _ready() -> void:
	var mi := MeshInstance3D.new()
	mi.mesh = CapsuleMesh.new()
	mi.name = "CapsuleMeshInstance3D"
	add_child(mi)
	mi.set_owner(get_tree().get_edited_scene_root())
	var cs := CollisionShape3D.new()
	cs.shape = CapsuleShape3D.new()
	cs.name = "CapsuleCollisionShape3D"
	if ProjectSettings.has_setting("plugins/quick_mesh/add_collision_syncronizers"):
		if ProjectSettings.get_setting("plugins/quick_mesh/add_collision_syncronizers"):
			cs.set_script(Syncroniser)
			cs.capsule_mesh = mi.mesh
	add_child(cs)
	cs.set_owner(get_tree().get_edited_scene_root())
	set_script(null)
