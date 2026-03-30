package robotname

import "core:fmt"
import "core:math/rand"

Robot_Storage :: struct {} // Please implement neccessary struct member to support your algorithm

Robot :: struct {
	name: string,
}

Error :: enum {
	None,
	Could_Not_Create_Name,
	Unimplemented,
}

// In this exercise, it is the responsibility of Robot_Storage
// to manage the Robot names (strings).
make_storage :: proc() -> Robot_Storage {
	// Implement this procedure.
	return Robot_Storage{}
}

delete_storage :: proc(storage: ^Robot_Storage) {
	// Implement this procedure.
}

new_robot :: proc(storage: ^Robot_Storage) -> (Robot, Error) {
	// Implement this procedure.
	return Robot{}, .Unimplemented
}

reset :: proc(storage: ^Robot_Storage, r: ^Robot) {
	// Implement this procedure.
}
