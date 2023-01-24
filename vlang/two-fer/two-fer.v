module main
fn two_fer(name string) string {
	you := if name != '' { name } else { 'you' }
	return 'One for ${you}, one for me.'
}