@tool
extends RigidBody3D

const Syncroniser = preload("../../collision_syncronizers/cylinder_syncronizer.gd")


func _ready() -> void:
	var mi := MeshInstance3D.new()
	mi.mesh = CylinderMesh.new()
	mi.name = "CylinderMeshInstance3D"
	add_child(mi)
	mi.set_owner(get_tree().get_edited_scene_root())
	var cs := CollisionShape3D.new()
	cs.shape = CylinderShape3D.new()
	cs.name = "CylinderCollisionShape3D"
	if ProjectSettings.has_setting("plugins/quick_mesh/add_collision_syncronizers"):
		if ProjectSettings.get_setting("plugins/quick_mesh/add_collision_syncronizers"):
			cs.set_script(Syncroniser)
			cs.cylinder_mesh = mi.mesh
	add_child(cs)
	cs.set_owner(get_tree().get_edited_scene_root())
	set_script(null)
