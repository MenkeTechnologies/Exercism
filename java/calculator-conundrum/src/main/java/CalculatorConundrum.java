class CalculatorConundrum {
    public String calculate(int operand1, int operand2, String operation) {
        if (operation == null) throw new IllegalArgumentException("Operation cannot be null");
        switch (operation) {
            case "":
                throw new IllegalArgumentException("Operation cannot be empty");
            case "+":
                return "%d %s %d = %d".formatted(operand1, operation, operand2, operand1 + operand2);
            case "*":
                return "%d %s %d = %d".formatted(operand1, operation, operand2, operand1 * operand2);
            case "/":
                if (operand2 == 0)
                    throw new IllegalOperationException("Division by zero is not allowed", new ArithmeticException());
                return "%d %s %d = %d".formatted(operand1, operation, operand2, operand1 / operand2);
            default:
                throw new IllegalOperationException(String.format("Operation '%s' does not exist", operation));
        }
    }
}
