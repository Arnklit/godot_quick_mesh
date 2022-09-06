@tool
extends MeshInstance3D


func _ready():
	mesh = PlaneMesh.new()
	set_script(null)
