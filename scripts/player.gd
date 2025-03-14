extends CharacterBody2D  # Użyj KinematicBody dla 2D lub KinematicBody3D dla 3D

# Prędkość poruszania się postaci

var speed = 200
# Funkcja _process jest wywoływana co klatkę
func _process(delta):
	# Resetujemy wektor prędkości
	velocity = Vector2.ZERO

	# Sprawdzamy, które klawisze są wciśnięte i aktualizujemy wektor prędkości
	if Input.is_action_pressed("w"):  # W górę (W)
		velocity.y -= 1
	if Input.is_action_pressed("s"):  # W dół (S)
		velocity.y += 1
	if Input.is_action_pressed("a"):  # W lewo (A)
		velocity.x -= 1
	if Input.is_action_pressed("d"):  # W prawo (D)
		velocity.x += 1

	# Normalizujemy wektor prędkości, aby uniknąć przyspieszania
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed

	# Poruszamy postać
	move_and_slide()

	# Możesz dodać tutaj obsługę animacji, np.:
	# update_animation()
