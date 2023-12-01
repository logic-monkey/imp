@tool
extends EditorPlugin


func _enter_tree():
	add_autoload_singleton("_IMP", "res://addons/imp/imp.gd")


func _exit_tree():
	remove_autoload_singleton("_IMP")
