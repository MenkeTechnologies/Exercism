using System;

public static class PlayAnalyzer
{
    public static string AnalyzeOnField(int shirtNum) =>
        shirtNum switch
        {
            1 => "goalie",
            2 => "left back",
            3 or 4 => "center back",
            5 => "right back",
            6 or 7 or 8 => "midfielder",
            9 => "left wing",
            10 => "striker",
            11 => "right wing",
            _ => throw new ArgumentOutOfRangeException(nameof(shirtNum), shirtNum, null)
        };

    public static string AnalyzeOffField(object report) =>
        report switch
        {
            int => $"There are {report} supporters at the match.",
            string => report.ToString(),
            Incident i and not Injury => i.GetDescription(),
            Incident j and Injury => $"Oh no! {j.GetDescription()} Medics are on the field.",
            Manager { Club: null } m => m.Name,
            Manager m => $"{m.Name} ({m.Club})",
            _ => throw new ArgumentException()
        } ?? throw new InvalidOperationException();
}
