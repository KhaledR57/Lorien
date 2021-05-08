extends PanelContainer
class_name UIToolbar

signal new_file
signal open_file(filepath)
signal save_file(filepath)
signal clear_canvas
signal undo_action
signal redo_action

# -------------------------------------------------------------------------------------------------
const BUTTON_HOVER_COLOR = Color.maroon
const BUTTON_CLICK_COLOR = Color.magenta
const BUTTON_NORMAL_COLOR = Color.white

# -------------------------------------------------------------------------------------------------
onready var _new_button: TextureButton = $HBoxContainer/NewFileButton
onready var _save_button: TextureButton = $HBoxContainer/SaveFileButton
onready var _open_button: TextureButton = $HBoxContainer/OpenFileButton
onready var _clear_canvas_button: TextureButton = $HBoxContainer/ClearCanvasButton
onready var _undo_button: TextureButton = $HBoxContainer/UndoButton
onready var _redo_button: TextureButton = $HBoxContainer/RedoButton

# -------------------------------------------------------------------------------------------------
func _ready():
	pass # Replace with function body.


# Button clicked callbacks
# -------------------------------------------------------------------------------------------------
func _on_NewFileButton_pressed(): emit_signal("new_file")
func _on_ClearCanvasButton_pressed(): emit_signal("clear_canvas")
func _on_UndoButton_pressed(): emit_signal("undo_action")
func _on_RedoButton_pressed(): emit_signal("redo_action")

func _on_OpenFileButton_pressed():
	# TODO: open file dialog etc
	pass

func _on_SaveFileButton_pressed():
	# TODO: open file dialog etc
	pass


# Custom hover highlighting
# -------------------------------------------------------------------------------------------------
func _on_SaveFileButton_mouse_entered(): _save_button.modulate = BUTTON_HOVER_COLOR
func _on_SaveFileButton_mouse_exited(): _save_button.modulate = BUTTON_NORMAL_COLOR
func _on_OpenFileButton_mouse_entered(): _open_button.modulate = BUTTON_HOVER_COLOR
func _on_OpenFileButton_mouse_exited(): _open_button.modulate = BUTTON_NORMAL_COLOR
func _on_NewFileButton_mouse_entered(): _new_button.modulate = BUTTON_HOVER_COLOR
func _on_NewFileButton_mouse_exited(): _new_button.modulate = BUTTON_NORMAL_COLOR
func _on_ClearCanvasButton_mouse_entered(): _clear_canvas_button.modulate = BUTTON_HOVER_COLOR
func _on_ClearCanvasButton_mouse_exited(): _clear_canvas_button.modulate = BUTTON_NORMAL_COLOR
func _on_UndoButton_mouse_entered(): _undo_button.modulate = BUTTON_HOVER_COLOR
func _on_UndoButton_mouse_exited(): _undo_button.modulate = BUTTON_NORMAL_COLOR
func _on_RedoButton_mouse_entered(): _redo_button.modulate = BUTTON_HOVER_COLOR
func _on_RedoButton_mouse_exited(): _redo_button.modulate = BUTTON_NORMAL_COLOR