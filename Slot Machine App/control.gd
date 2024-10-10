extends Control
@onready var slot_1: Label = $"HBoxContainer/Slot 1"
@onready var slot_2: Label = $"HBoxContainer/Slot 2"
@onready var slot_3: Label = $"HBoxContainer/Slot 3"
@onready var roll_sfx: AudioStreamPlayer = $"Roll button/roll sfx"

@onready var winner_sfx: AudioStreamPlayer = $"WINNER sfx"



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func coin_flip():
	return floor(randf_range(1, 8))




func _on_roll_button_pressed() -> void:
	coin_flip()
	slot_1.text = str(coin_flip())
	coin_flip()
	slot_2.text = str(coin_flip())
	coin_flip()
	slot_3.text = str(coin_flip())
	if (slot_1.text == slot_2.text and slot_2.text == slot_3.text):
		winner_sfx.play()
	else:
		roll_sfx.play()
