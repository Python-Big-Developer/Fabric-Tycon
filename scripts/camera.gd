extends Camera2D

@export var zoom_speed: float = 0.1  # Szybkość zoomu
@export var min_zoom: float = 0.5    # Minimalny zoom (większa wartość = bardziej oddalone)
@export var max_zoom: float = 2.0    # Maksymalny zoom (bliżej)

func _input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			if event.button_index == MOUSE_BUTTON_WHEEL_UP:
				zoom += Vector2(zoom_speed, zoom_speed)
			elif event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
				zoom -= Vector2(zoom_speed, zoom_speed)

			# Ograniczenie zoomu
			zoom.x = clamp(zoom.x, min_zoom, max_zoom)
			zoom.y = clamp(zoom.y, min_zoom, max_zoom)
