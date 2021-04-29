extends Tree

export var seperator : String = "/"

var _TREE = null
var root  = null
var items = []

func _ready() -> void:
	_TREE = self



func get_array_item_index(path):
	for i in range(items.size()):
		var item = items[i]
		if item[0] == path:
			return i
	return -1



func get_array_item(path):
	for i in range(items.size()):
		var item = items[i]
		if item[0] == path:
			return item
	return null



func set_root():
	root = _TREE.create_item()
	return root



func set_item(path : String, spath = null):
	for n in items:
		if n[0] == path:
			return
	var mkarr = Toolset.clear_array_values(path.split(seperator))
	var arr   = _remove_last(mkarr)
	var vit   = _TREE.create_item(arr)
	vit.set_meta("type_path", path)
	var checkItem = find_item(path)
	if checkItem != null:
		var data = [ path, vit, spath ]
		items.append(data)
		return checkItem
	return null

# this is a part of "set_item"
func _remove_last(arr):
	if arr.size() > 1:
		arr.remove(arr.size() - 1)
		var a = ""
		for n in range(arr.size()):
			var item = arr[n]
			a += item
			if n < arr.size()-1:
				a += seperator
		for n in items:
			if n[0] == a:
				return n[1]
	return root



func find_item(path):
	var found = []
	if root.get_children() != null:
		_recursive_find_item(root.get_children(), path, found)
	return found[0] if found.size() == 1 else null

# this is a part of "find_item"
func _recursive_find_item(item, curr_path, found = []):
	while(item != null):
		if item.get_meta("type_path") == curr_path:
			found.append(item)
		if item.get_children() != null:
			_recursive_find_item(item.get_children(), curr_path, found)
		item = item.get_next()
