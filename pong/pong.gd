extends Node2D

var puntosJugador1 = 0
var puntosJugador2 = 0

# Esta función ya está conectada a tu señal body_entered del arco izquierdo
func _on_arco_izquierda_body_entered(body: Node2D) -> void:
	#si el cuerpo que entro al arco es la "pelota" cuenta como gol
	if body.name == "pelota":
		puntosJugador2 += 1
		$marcador2.text = str(puntosJugador2)
		body.reset_pelota()
		print("gol! anotan los rojos")
		$fahh.play()



func _on_arco_derecha_body_entered(body: Node2D) -> void:
	if body.name == "pelota":
		puntosJugador1 +=1
		$marcador1.text = str(puntosJugador1)
		body.reset_pelota()
		print("gol! la metieron los azules")
		$fahh.play()
#config menu

var menu_escena = preload("res://menu/menu.tscn")
var menu_instancia = null

func _process(_delta):
	if Input.is_action_just_pressed("pausa"):
		abrir_menu()

func abrir_menu():
	if menu_instancia == null:
		# Creamos una capa nueva para que el menú flote sobre el juego
		var capa_menu = CanvasLayer.new()
		capa_menu.name = "CapaMenu"
		
		# Instanciamos tu menú
		menu_instancia = menu_escena.instantiate()
		
		# Añadimos el menú a la capa, y la capa a la escena
		capa_menu.add_child(menu_instancia)
		add_child(capa_menu)
		
		# Forzamos a que el Control ocupe toda la capa (centrado automático)
		if menu_instancia is Control:
			menu_instancia.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
		
		get_tree().paused = true
	else:
		# cerramos la instancia si estaba abierta
		cerrar_menu()

func cerrar_menu():
	if menu_instancia != null:
		menu_instancia.queue_free()
		menu_instancia = null
		get_tree().paused = false
