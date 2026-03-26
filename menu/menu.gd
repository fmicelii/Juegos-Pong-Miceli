extends Control

# referenciando a lo que esta en el menu
@onready var menu_principal = $MenuPrincipalContenedor


func _on_jugar_pressed() -> void:
	get_tree().paused = false
	self.visible = false
	$falloutSelection.play()


func _on_salir_pressed() -> void:
	get_tree().quit()


func _on_jugar_mouse_entered() -> void:
	$falloutSelection.play() 


func _on_salir_mouse_entered() -> void:
	$falloutSelection.play() 
