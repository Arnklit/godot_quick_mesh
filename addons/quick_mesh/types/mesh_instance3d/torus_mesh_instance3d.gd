@tool
extends MeshInstance3D


func _ready():
	mesh = TorusMesh.new()
	set_script(null)
