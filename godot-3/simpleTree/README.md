# SimpleTree Plugin for Godot 3


**Info**
> This is a Plugin for the Tree Node load it as addon

<br />

### Functions

___

<br />

### **FSTools._get_array_item_index(_`path`_)_**

+ **path** = path to TreeItem

**return `int`**
> Index of Item in array

```gdscript

    var getSecondIndex = Tree.get_array_item_index("second")

    print(getSecondIndex) # Result: 2

```

<br />

### **FSTools._get_array_item(_`path`_)_**

+ **path** = path to TreeItem

**return `array`**

+ return array[0] : item_path
+ return array[1] : TreeItem
+ return array[2] : spath (custom data like an array, string, bool, int)

```gdscript

    var arraySecond = Tree.get_array_item("second")

    print(arraySecond) # ["second", TreeItem, "MY_CUSTOM_DATA"]

```

<br />

### **FSTools._set_root()_**

**return `TreeItem`**
> returns the **root** TreeItem

```gdscript

    var root = Tree.set_root()

    root.set_text(0, "My Root")

    print(root) # Result: TreeItem

```

<br />

### **FSTools._set_item(_`path`_,_`data`_)_**

+ **path** = path to TreeItem
+ **data** = add custom data

**return `TreeItem`**
> returns the **item** TreeItem

```gdscript

    var myItem1 = Tree.set_item("first")
    myItem1.set_text(0, "My first Item")

    var myItem2 = Tree.set_item("second")
    myItem2.set_text(0, "My second Item")

    var mySubItem1 = Tree.set_item("first/subitem1")
    mySubItem1.set_text(0, "sub Item 1")

```

<br />

### **FSTools._find_item(_`path`_)_**

+ **path** = path to TreeItem

**return `TreeItem`**
> returns the **item** TreeItem

```gdscript

    var findSecond = Tree.find_item("second")

    print(findSecond) # Result: TreeItem

```

<br />

___

<br />

**License**

> MIT (see LICENSE file)
