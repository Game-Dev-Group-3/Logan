extends Button

@export var stage = 1

func _ready():
	if stage == get_parent().level:
		disabled = false
	
	self.owner = get_parent()
	self.pressed.connect(_on_pressed)

func _on_pressed() -> void:
	get_parent().level += 1
	var node_to_save = get_parent()
	var scene = PackedScene.new()
	scene.pack(node_to_save)
	ResourceSaver.save(scene, "user://my_scene.tscn")
	#get_parent().save()
	get_parent().queue_free()
	
	var i = randi_range(1, 2)
	if i == 1:
		get_tree().change_scene_to_file("res://Group3Final/Scenes/Islands/Island1.tscn")
	elif i == 2:
		get_tree().change_scene_to_file("res://Group3Final/Scenes/Islands/Island2.tscn")
	elif i == 3:
		get_tree().change_scene_to_file("res://Group3Final/Scenes/Islands/Island3.tscn")
	
	#get_tree().change_scene_to_file("res://testisland.tscn")
	
	#used this video: https://www.youtube.com/watch?v=5ZUyvZSL1-0
