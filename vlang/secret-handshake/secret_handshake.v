module main
enum Command as u8 {
	wink = 1
	double_blink = 2
	close_your_eyes	= 4
	jump = 8
	reverse	= 16
}
pub fn commands(encoded_message int) []Command {
	mut ret := []Command{}
	for cmd in [Command.wink, Command.double_blink, Command.close_your_eyes, Command.jump] {
		if encoded_message & int(cmd) > 0 { ret << cmd }
	}
	if encoded_message & int(Command.reverse) != 0 { ret.reverse_in_place() }
	
	return ret
}
