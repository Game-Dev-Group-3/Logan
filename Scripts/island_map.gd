extends Node2D
@onready var global = get_node("/root/Inventory")

@export var level = 0
@export var crewmates: Array[Creature]

func _ready():
	if level == 1:
		global.crewmates = crewmates
		for i in crewmates:
			i.owner = self
			i.reparent(global)
	
	pass

func save():
	level += 1
	#var node_to_save = self
	#var scene = PackedScene.new()
	#scene.pack(node_to_save)
	#ResourceSaver.save(scene, "res://my_scene.tscn")
	
	#pretty sure this is not being used for anything.
