# Copyright @ 2022 Kasper Arnklit Frandsen - MIT License
# See `LICENSE.md` included in the source distribution for details.
@tool
extends EditorPlugin


func _enter_tree() -> void:
	if !ProjectSettings.has_setting("plugins/quick_mesh/add_collision_syncronizers"):
		ProjectSettings.set_setting("plugins/quick_mesh/add_collision_syncronizers", true)
	
	add_custom_type("BoxMeshInstance3D", "MeshInstance3D", preload("./types/mesh_instance3d/box_mesh_instance3d.gd"), preload("./icons/Box.svg"))
	add_custom_type("CapsuleMeshInstance3D", "MeshInstance3D", preload("./types/mesh_instance3d/capsule_mesh_instance3d.gd"), preload("./icons/Capsule.svg"))
	add_custom_type("CylinderMeshInstance3D", "MeshInstance3D", preload("./types/mesh_instance3d/cylinder_mesh_instance3d.gd"), preload("./icons/Cylinder.svg"))
	add_custom_type("PlaneMeshInstance3D", "MeshInstance3D", preload("./types/mesh_instance3d/plane_mesh_instance3d.gd"), preload("./icons/Plane.svg"))
	add_custom_type("PrismMeshInstance3D", "MeshInstance3D", preload("./types/mesh_instance3d/prism_mesh_instance3d.gd"), preload("./icons/Prism.svg"))
	add_custom_type("SphereMeshInstance3D", "MeshInstance3D", preload("./types/mesh_instance3d/sphere_mesh_instance3d.gd"), preload("./icons/Sphere.svg"))
	add_custom_type("TextMeshInstance3D", "MeshInstance3D", preload("./types/mesh_instance3d/text_mesh_instance3d.gd"), preload("./icons/Text.svg"))
	add_custom_type("TorusMeshInstance3D", "MeshInstance3D", preload("./types/mesh_instance3d/torus_mesh_instance3d.gd"), preload("./icons/Torus.svg"))
	
	add_custom_type("BoxRigidBody3D", "RigidBody3D", preload("./types/rigid_body3d/box_rigid_body3d.gd"), preload("./icons/Box.svg"))
	add_custom_type("CapsuleRigidBody3D", "RigidBody3D", preload("./types/rigid_body3d/capsule_rigid_body3d.gd"), preload("./icons/Capsule.svg"))
	add_custom_type("CylinderRigidBody3D", "RigidBody3D", preload("./types/rigid_body3d/cylinder_rigid_body3d.gd"), preload("./icons/Cylinder.svg"))
	add_custom_type("PlaneRigidBody3D", "RigidBody3D", preload("./types/rigid_body3d/plane_rigid_body3d.gd"), preload("./icons/Plane.svg"))
	add_custom_type("PrismRigidBody3D", "RigidBody3D", preload("./types/rigid_body3d/prism_rigid_body3d.gd"), preload("./icons/Prism.svg"))
	add_custom_type("SphereRigidBody3D", "RigidBody3D", preload("./types/rigid_body3d/sphere_rigid_body3d.gd"), preload("./icons/Sphere.svg"))
	add_custom_type("TorusRigidBody3D", "RigidBody3D", preload("./types/rigid_body3d/torus_rigid_body3d.gd"), preload("./icons/Torus.svg"))
	
	add_custom_type("BoxStaticBody3D", "StaticBody3D", preload("./types/Static_body3d/box_static_body3d.gd"), preload("./icons/Box.svg"))
	add_custom_type("CapsuleStaticBody3D", "StaticBody3D", preload("./types/Static_body3d/capsule_static_body3d.gd"), preload("./icons/Capsule.svg"))
	add_custom_type("CylinderStaticBody3D", "StaticBody3D", preload("./types/Static_body3d/cylinder_static_body3d.gd"), preload("./icons/Cylinder.svg"))
	add_custom_type("PlaneStaticBody3D", "StaticBody3D", preload("./types/Static_body3d/plane_static_body3d.gd"), preload("./icons/Plane.svg"))
	add_custom_type("PrismStaticBody3D", "StaticBody3D", preload("./types/Static_body3d/prism_static_body3d.gd"), preload("./icons/Prism.svg"))
	add_custom_type("SphereStaticBody3D", "StaticBody3D", preload("./types/Static_body3d/sphere_static_body3d.gd"), preload("./icons/Sphere.svg"))
	add_custom_type("TorusStaticBody3D", "StaticBody3D", preload("./types/Static_body3d/torus_static_body3d.gd"), preload("./icons/Torus.svg"))


func _exit_tree() -> void:
	remove_custom_type("BoxMeshInstance3D")
	remove_custom_type("CapsuleMeshInstance3D")
	remove_custom_type("CylinderMeshInstance3D")
	remove_custom_type("PlaneMeshInstance3D")
	remove_custom_type("PrismMeshInstance3D")
	remove_custom_type("SphereMeshInstance3D")
	remove_custom_type("TextMeshInstance3D")
	
	remove_custom_type("BoxRigidBody3D")
	remove_custom_type("CapsuleRigidBody3D")
	remove_custom_type("CylinderRigidBody3D")
	remove_custom_type("PlaneRigidBody3D")
	remove_custom_type("PrismRigidBody3D")
	remove_custom_type("SphereRigidBody3D")
	remove_custom_type("TorusRigidBody3D")
	
	remove_custom_type("BoxStaticBody3D")
	remove_custom_type("CapsuleStaticBody3D")
	remove_custom_type("CylinderStaticBody3D")
	remove_custom_type("PlaneStaticBody3D")
	remove_custom_type("PrismStaticBody3D")
	remove_custom_type("SphereStaticBody3D")
	remove_custom_type("TorusStaticBody3D")
