using System;
using System.Globalization;

class WeighingMachine
{
    public int Precision { get; }

    public double TareAdjustment { get; set; } = 5;
    private double _weight;

    public double Weight
    {
        get => _weight;
        set
        {
            if (value >= 0)
                _weight = value;
            else
                throw new ArgumentOutOfRangeException("Weight cannot be negative.");
        }
    }

    public string DisplayWeight
    {
        get
        {
            var format = new NumberFormatInfo { NumberDecimalDigits = Precision };
            var weightString = (Weight - TareAdjustment).ToString("f", format);
            return $"{weightString} kg";
        }
    }

    public WeighingMachine(int precision) => Precision = precision;
}
