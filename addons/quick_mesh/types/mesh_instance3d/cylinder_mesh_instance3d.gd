@tool
extends MeshInstance3D


func _ready():
	mesh = CylinderMesh.new()
	set_script(null)
