extends PanelContainer

@onready var log_label: Label = $MarginContainer/VBoxContainer/Logs/LogLabel
@onready var stone_label: Label = $MarginContainer/VBoxContainer/Stone/StoneLabel
@onready var carr_label: Label = $MarginContainer/VBoxContainer/Carrot/CarrotLabel
@onready var potato_label: Label = $MarginContainer/VBoxContainer/Potato/PotatoLabel
@onready var egg_label: Label = $MarginContainer/VBoxContainer/Egg/EggLabel
@onready var milk_label: Label = $MarginContainer/VBoxContainer/Milk/MilkLabel


func _ready() -> void:
	InventoryManager.inventory_changed.connect(on_inventory_changed)

func on_inventory_changed() -> void:
	var inventory: Dictionary = InventoryManager.inventory
	
	if inventory.has("log"):
		log_label.text = str(inventory["log"])
	
	if inventory.has("stone"):
		stone_label.text = str(inventory["stone"])
	
	if inventory.has("carr"):
		carr_label.text = str(inventory["carr"])
	
	if inventory.has("potato"):
		potato_label.text = str(inventory["potato"])
	
	if inventory.has("egg"):
		egg_label.text = str(inventory["egg"])
	
	if inventory.has("milk"):
		milk_label.text = str(inventory["milk"])
