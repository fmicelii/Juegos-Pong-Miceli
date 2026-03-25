extends Control

# Referencias a los contenedores
@onready var menu_principal = $MenuPrincipalContenedor # O el nombre que le hayas puesto
@onready var opciones = $OpcionesContenedor

func _on_jugar_pressed() -> void:
	if get_tree().paused:
		get_tree().paused = false
		get_parent().queue_free()
	else:
		get_tree().change_scene_to_file("res://pong/pong.tscn")

func _on_opciones_pressed() -> void:
	# En lugar de cambiar escena, ocultamos uno y mostramos otro
	menu_principal.visible = false
	opciones.visible = true

func _on_atras_pressed() -> void:
	# El botón de atrás ahora hace lo inverso
	opciones.visible = false
	menu_principal.visible = true

func _on_salir_pressed() -> void:
	get_tree().quit()
