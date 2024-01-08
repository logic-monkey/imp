extends Node
const WAITING = -1
const MENU = 0
const TRANSITION = 1
const EXPLORE = 2
const CUTSCENE = 3
const RPG_FIGHT = 4
const RADIAL_MENU = 5

const friendly_names = \
		{
			-1: "Waiting",
			0:  "Menu",
			1:  "Transition",
			2:  "Explore",
			3:  "Cutscene",
			4:  "RPG Battle",
			5:  "Radial Menu",
		}

signal input_mode_changed(mode)
signal input_mode_waiting
var mode : int = WAITING:
	get:
		return mode
	set(value):
		mode = value
		input_mode_changed.emit(value)
		if value == WAITING: input_mode_waiting.emit()
		#emit_signal("input_mode_changed",value)
