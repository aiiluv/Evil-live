extends Camera2D

@export var player: CharacterBody2D #ngambil sprite player

func _process(_delta):
	if player:
		# kamera ikutin posisi X player, kalau Y dikunci di angka 300
		global_position = Vector2(player.global_position.x, 300)
