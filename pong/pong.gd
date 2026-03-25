extends Node2D

var puntosJugador1 = 0
var puntosJugador2 = 0

@onready var menu_principal = $menu

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
		$falloutXp.play()



#config menu

func _process(_delta):
	if Input.is_action_just_pressed("pausa"):
			menu_principal.visible = true
			get_tree().paused = true
			$falloutSelection.play()
