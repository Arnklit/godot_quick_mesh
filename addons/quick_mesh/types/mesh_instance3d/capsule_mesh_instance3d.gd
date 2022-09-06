@tool
extends MeshInstance3D


func _ready():
	mesh = CapsuleMesh.new()
	set_script(null)
