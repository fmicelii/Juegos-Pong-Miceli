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


func _on_arco_derecha_body_entered(body: Node2D) -> void:
	if body.name == "pelota":
		puntosJugador1 +=1
		$marcador1.text = str(puntosJugador1)
		body.reset_pelota()
		print("gol! la metieron los azules")
