@tool
extends MeshInstance3D


func _ready():
	mesh = TextMesh.new()
	mesh.text = "Text"
	set_script(null)
