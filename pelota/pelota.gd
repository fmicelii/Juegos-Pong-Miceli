extends CharacterBody2D

var velocidad = 450
#guarda el centro porque es donde esta la pelota en el editor
var posicion_inicial : Vector2

func _ready():
	#guardamos la posición central (640, 360) definida en el editor
	posicion_inicial = global_position
	reset_pelota()

func reset_pelota():
	#hace un timeout cade vez q hay gol
	await get_tree().create_timer(1).timeout
	
	# Volvemos al centro
	global_position = posicion_inicial
	
	#de manera random, se fija a donde sale la pelota
	velocity.x = 1 if randi() % 2 == 0 else -1
	velocity.y = 1 if randi() % 2 == 0 else -1
	
	velocity *= velocidad

func _physics_process(delta):
	var infoDeColision = move_and_collide(velocity * delta)
	
	if infoDeColision:
		velocity = velocity.bounce(infoDeColision.get_normal())
