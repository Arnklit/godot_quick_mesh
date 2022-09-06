@tool
extends MeshInstance3D


func _ready():
	mesh = SphereMesh.new()
	set_script(null)
