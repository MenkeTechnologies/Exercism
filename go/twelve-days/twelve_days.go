package twelve

var days = []string{"first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"}
var gifts = []string{"a Partridge in a Pear Tree.", "two Turtle Doves, ", "three French Hens, ", "four Calling Birds, ", "five Gold Rings, ", "six Geese-a-Laying, ", "seven Swans-a-Swimming, ", "eight Maids-a-Milking, ", "nine Ladies Dancing, ", "ten Lords-a-Leaping, ", "eleven Pipers Piping, ", "twelve Drummers Drumming, "}
var and = map[bool]string{true: "and ", false: ""}
var nl = map[bool]string{true: "\n", false: ""}

func Verse(i int) (res string) {
	res = "On the " + days[i-1] + " day of Christmas my true love gave to me: "
	for idx := i - 1; idx >= 0; idx-- {
		res += and[i > 1 && idx == 0] + gifts[idx]
	}
	return
}
func Song() (res string) {
	for i := range days {
		res += Verse(i+1) + nl[i < 11]
	}
	return
}
