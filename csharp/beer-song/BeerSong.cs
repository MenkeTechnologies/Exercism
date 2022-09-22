using System.Linq;

public static class BeerSong
{
    private static string Verse(int bottles) =>
        bottles switch
        {
            2 =>
                $"{bottles} bottles of beer on the wall, {bottles} bottles of beer.\nTake one down and pass it around, {bottles - 1} bottle of beer on the wall.",
            1 =>
                $"{bottles} bottle of beer on the wall, {bottles} bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.",
            0 =>
                "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.",
            _ =>
                $"{bottles} bottles of beer on the wall, {bottles} bottles of beer.\nTake one down and pass it around, {bottles - 1} bottles of beer on the wall."
        };

    public static string Recite(int startBottles, int takeDown) => string.Join("\n\n",
        Enumerable.Range(startBottles - takeDown + 1, takeDown).Reverse().Select(Verse));
}
