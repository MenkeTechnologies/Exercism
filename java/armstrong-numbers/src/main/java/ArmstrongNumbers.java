
class ArmstrongNumbers {
    boolean isArmstrongNumber(int numberToCheck) {

        return numberToCheck == String.valueOf(numberToCheck).chars().map(Character::getNumericValue).mapToDouble(c -> Math.pow(c, String.valueOf(numberToCheck).length())).sum();
    }
}
