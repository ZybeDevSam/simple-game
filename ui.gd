extends CanvasLayer

static var image = load("res://PNG/UI/playerLife2_blue.png")
var time_elapsed := 0

func _set_health(amount):
	for child in $MarginContainer2/HBoxContainer.get_children():
		child.queue_free()

	for i in amount:
		var text_rect = TextureRect.new()
		text_rect.texture = image
		$MarginContainer2/HBoxContainer.add_child(text_rect)
		text_rect.stretch_mode = TextureRect.STRETCH_KEEP

func _on_timer_timeout() -> void:
	time_elapsed += 1
	Global.score += 1
	$MarginContainer/Label.text = str(time_elapsed)
