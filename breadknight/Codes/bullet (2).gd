extends CharacterBody2D

const speed = 2000
	
func _process(delta: float):
	position += transform.x * speed * delta

func _on_timer_timeout():
	queue_free()

func _on_hit_detector_body_entered(body: Node2D) -> void:
	queue_free()
