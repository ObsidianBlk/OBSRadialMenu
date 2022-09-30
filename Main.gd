extends Node2D


# ------------------------------------------------------------------------------
# Variables
# ------------------------------------------------------------------------------
var _center_mode : String = "mouse"

# ------------------------------------------------------------------------------
# Onready Variables
# ------------------------------------------------------------------------------
onready var obs_radial_menu_node : OBSRadialMenu = $CanvasLayer/OBSRadialMenu


# ------------------------------------------------------------------------------
# Override Methods
# ------------------------------------------------------------------------------

func _unhandled_input(event : InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			if not obs_radial_menu_node.visible:
				match _center_mode:
					"mouse":
						obs_radial_menu_node.popup(Rect2(event.position, Vector2.ZERO))
					"screen":
						obs_radial_menu_node.popup_centered()

func _on_OptionControls_centering_changed(mode : String) -> void:
	_center_mode = mode
