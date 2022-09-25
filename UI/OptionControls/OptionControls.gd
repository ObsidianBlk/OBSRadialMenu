extends PanelContainer


# ------------------------------------------------------------------------------
# Signals
# ------------------------------------------------------------------------------
signal centering_changed(mode)

# ------------------------------------------------------------------------------
# Onready Variables
# ------------------------------------------------------------------------------
onready var mousecenter_btn : CheckButton = $HBC/CenteredControls/Options/MouseCenter
onready var screencenter_btn : CheckButton = $HBC/CenteredControls/Options/ScreenCenter

# ------------------------------------------------------------------------------
# Handler Methods
# ------------------------------------------------------------------------------
func _on_MouseCenter_toggled(button_pressed : bool):
	if button_pressed:
		screencenter_btn.pressed = false
		emit_signal("centering_changed", "mouse")
	else:
		screencenter_btn.pressed = true
		emit_signal("centering_changed", "screen")

func _on_ScreenCenter_toggled(button_pressed : bool):
	if button_pressed:
		mousecenter_btn.pressed = false
		emit_signal("centering_changed", "screen")
	else:
		mousecenter_btn.pressed = true
		emit_signal("centering_changed", "mouse")
