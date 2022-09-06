@tool
extends StaticBody3D

const Syncroniser = preload("../../collision_syncronizers/plane_syncronizer.gd")


func _ready() -> void:
	var mi := MeshInstance3D.new()
	mi.mesh = PlaneMesh.new()
	mi.name = "PlaneMeshInstance3D"
	add_child(mi)
	mi.set_owner(get_tree().get_edited_scene_root())
	var cs := CollisionShape3D.new()
	cs.shape = BoxShape3D.new()
	cs.shape.size = Vector3(2.0, 0.1, 2.0)
	cs.name = "PlaneCollisionShape3D"
	cs.translate(Vector3(0.0, -0.05, 0.0))
	if ProjectSettings.has_setting("plugins/quick_mesh/add_collision_syncronizers"):
		if ProjectSettings.get_setting("plugins/quick_mesh/add_collision_syncronizers"):
			cs.set_script(Syncroniser)
			cs.plane_mesh = mi.mesh
	add_child(cs)
	cs.set_owner(get_tree().get_edited_scene_root())
	set_script(null)
