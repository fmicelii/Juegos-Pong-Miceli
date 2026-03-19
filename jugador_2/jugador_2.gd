extends CharacterBody2D

var velocidad = 400
var pelotaSeguimiento

func _ready():
	pelotaSeguimiento = get_parent().get_node("pelota")
	
func _physics_process(delta):
	#solucion para evitar jitteo, abs transforma todo a positivo
	#y estas lineas de codigo dicen que si el espacio entre
	#la pelota y el j2 es de menos de 3 pixeles, se puede quedar quieto
	if abs(pelotaSeguimiento.position.y - position.y) < 3:
		return
	
	if pelotaSeguimiento.position.y < position.y:
		velocity.y = -velocidad
	else:
		velocity.y = velocidad
		
	move_and_collide(velocity*delta)
