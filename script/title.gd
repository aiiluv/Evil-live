extends Button

#posisi awalnya
var start_position: Vector2

#max gambar bergeser
@export var max_offset: float = 30.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_position = position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#ambil ukuran layar
	var center_screen = get_viewport_rect().size/2
	
	#hitung seberapa jauh kursor mouse dari tengah layar (nilainya antara -1 sampai 1)
	var mouse_effect = (get_viewport().get_mouse_position() - center_screen) / center_screen
	
	#hitung posisi target baru berdasarkan input mouse tadi
	var target_pos = start_position + (mouse_effect * max_offset)
	
	#gerakkan title ke posisi target
	position = position.lerp(target_pos, 5.0 * delta)
