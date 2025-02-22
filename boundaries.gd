extends TileMapLayer

const boundary_block_atlas_pos = Vector2i(0,1)
const main_source = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var offsets = [
		Vector2i(0,-1),
		Vector2i(0,1),
		Vector2i(1,0),
		Vector2i(-1,0),
	]
	var used = get_used_cells()
	for spot in used:
		for offset in offsets:
			var current_spot = spot + offset
			if get_cell_source_id(current_spot) == -1:
				set_cell(current_spot, main_source, boundary_block_atlas_pos)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
