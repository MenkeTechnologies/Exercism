private const val BEER = "beer"
private const val BOTTLE = "bottle"
private const val BOTTLES_OF_BEER = "${BOTTLE}s of $BEER"
private const val ON_THE_WALL = "on the wall"
private const val DOWN_AND_PASS_IT_AROUND = "down and pass it around"
private const val BOTTLE_OF_BEER = "$BOTTLE of $BEER"
private const val NO_MORE = "no more"
private const val GO_TO_THE_STORE_AND_BUY_SOME_MORE = "Go to the store and buy some more"
private const val MAX = 99
private const val TAKE = "Take"
private const val MIN = 1
private const val RS = "\n"

object BeerSong {
    fun verses(startBottles: Int, takeDown: Int): String {

        return (startBottles downTo takeDown).map {
            when (it) {
                in 2..MAX -> "$it $BOTTLES_OF_BEER $ON_THE_WALL, $it ${BOTTLES_OF_BEER}.$RS$TAKE one $DOWN_AND_PASS_IT_AROUND, ${it - MIN} $BOTTLE${if (it == 2) "" else "s"} of $BEER $ON_THE_WALL.$RS"
                MIN -> "$MIN $BOTTLE_OF_BEER $ON_THE_WALL, 1 $BOTTLE_OF_BEER.$RS$TAKE it $DOWN_AND_PASS_IT_AROUND, $NO_MORE $BOTTLES_OF_BEER $ON_THE_WALL.$RS"
                0 -> "${NO_MORE.capitalize()} $BOTTLES_OF_BEER $ON_THE_WALL, $NO_MORE $BOTTLES_OF_BEER.$RS$GO_TO_THE_STORE_AND_BUY_SOME_MORE, $MAX $BOTTLES_OF_BEER $ON_THE_WALL.$RS"
                else -> ""
            }
        }.joinToString(RS)

    }
}
