tool
extends EditorPlugin

func _enter_tree():
	add_custom_type("SimpleTree", "Tree", preload("scripts/simplifier.gd"), preload("assets/tree.png"))



func _exit_tree():
	remove_custom_type("SimpleTree")
