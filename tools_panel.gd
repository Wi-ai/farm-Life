extends PanelContainer

@onready var tool_axe: Button = $MarginContainer/HBoxContainer/ToolAxe
@onready var tool_tilling: Button = $MarginContainer/HBoxContainer/ToolTilling
@onready var tool_watering_can: Button = $MarginContainer/HBoxContainer/ToolWateringCan
@onready var tool_carrot: Button = $MarginContainer/HBoxContainer/ToolCarrot
@onready var tool_potato: Button = $MarginContainer/HBoxContainer/ToolPotato


func _on_tool_axe_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.AxeWood)

func _on_tool_tilling_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.TillGround)

func _on_tool_watering_can_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.WaterCrops)

func _on_tool_carrot_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.PlantCarrot)

func _on_tool_potato_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.PlantPotato)

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_RIGHT:
			ToolManager.select_tool(DataTypes.Tools.None)
			tool_axe.release_focus()
			tool_tilling.release_focus()
			tool_watering_can.release_focus()
			tool_carrot.release_focus()
			tool_potato.release_focus()
