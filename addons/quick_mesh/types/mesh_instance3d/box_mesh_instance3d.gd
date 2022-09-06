@tool
extends MeshInstance3D


func _ready():
	mesh = BoxMesh.new()
	set_script(null)
