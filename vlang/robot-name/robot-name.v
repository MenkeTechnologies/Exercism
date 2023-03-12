module main
import rand

const (
	letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
	nums = '0123456789'
)

struct Robot {
mut:
  name string
}
fn create_robot_storage() map[string]Robot {
    return map[string]Robot{}
}
fn random_name() string {
	return rand.string_from_set(letters, 2) + rand.string_from_set(nums, 3)
}
fn create_robot(mut robots map[string]Robot) Robot {
    mut r := Robot{name: random_name()}
    for r.name in robots {r.name = random_name()}
    robots[r.name] = r
    return r
}
fn (mut r Robot) reset(mut robots map[string]Robot) {
    robots.delete(r.name)
    r.name = random_name()
    for r.name in robots {r.name = random_name()}
    robots[r.name] = r
}
