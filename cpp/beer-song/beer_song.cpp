#include "beer_song.h"

namespace beer_song {
    const string one_bottle = "1 bottle of beer on the wall, 1 bottle of beer.\n"
                              "Take it down and pass it around, no more bottles of beer on the wall.\n";
    const string no_more_bottles = "No more bottles of beer on the wall, no more bottles of beer.\n"
                                   "Go to the store and buy some more, 99 bottles of beer on the wall.\n";

    string more_bottles(int n) {
        string cnt = to_string(n);
        string next_bottle_count = to_string(n - 1);
        string plural = n > 2 ? "s" : "";
        return cnt + " bottles of beer on the wall, " +
               cnt + " bottles of beer.\nTake one down and pass it around, " +
               next_bottle_count + " bottle" + plural + " of beer on the wall.\n";
    }

    string verse(int at) {
        switch (at) {
            case 0:
                return no_more_bottles;
            case 1:
                return one_bottle;
            default:
                return more_bottles(at);
        }
    }

    string sing(int from, int to) {
        string out;
        for (int i = from; i > to; --i) {
            out += verse(i) + "\n";
        }
        return out += verse(to);
    }

}
