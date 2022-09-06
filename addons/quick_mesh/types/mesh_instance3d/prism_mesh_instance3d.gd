@tool
extends MeshInstance3D


func _ready():
	mesh = PrismMesh.new()
	set_script(null)
