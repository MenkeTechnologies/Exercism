using System;

public static class SimpleCalculator
{
    public static string Calculate(int operand1, int operand2, string operation)
    {
        return operation switch
        {
            "+" => $"{operand1} + {operand2} = {SimpleOperation.Addition(operand1, operand2)}",
            "*" => $"{operand1} * {operand2} = {SimpleOperation.Multiplication(operand1, operand2)}",
            "/" when operand2 == 0 => "Division by zero is not allowed.",
            "/" => $"{operand1} / {operand2} = {SimpleOperation.Division(operand1, operand2)}",
            "" => throw new ArgumentException(),
            null => throw new ArgumentNullException(),
            _ => throw new ArgumentOutOfRangeException()
        };
    }
}
