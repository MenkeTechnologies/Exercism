using System;
using System.Collections.Generic;
using System.Linq;

public class HighScores
{
    private List<int> mylist;

    public HighScores(List<int> list)
    {
        mylist = list;
    }

    public List<int> Scores()
    {
        return mylist;
    }

    public int Latest()
    {
        return mylist[^1];
    }

    public int PersonalBest()
    {
        List<int> cloned = new List<int>(mylist);
        cloned.Sort();
        return cloned[^1];
    }

    public List<int> PersonalTopThree()
    {
        List<int> cloned = new List<int>(mylist);
        cloned.Sort();
        var personalTopThree = new List<int>();
        for (int i = cloned.Count - 1; i >= cloned.Count - 3 && i >= 0; --i)
        {
            personalTopThree.Add(cloned[i]);
        }

        return personalTopThree;
    }
}