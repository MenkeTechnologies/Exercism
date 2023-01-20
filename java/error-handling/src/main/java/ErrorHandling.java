import java.util.Optional;

class ErrorHandling {
    void handleErrorByThrowingIllegalArgumentException() {
        throw new IllegalArgumentException();
    }

    void handleErrorByThrowingIllegalArgumentExceptionWithDetailMessage(String message) throws IllegalArgumentException {
        throw new IllegalArgumentException(message);
    }

    void handleErrorByThrowingAnyCheckedException() throws ClassNotFoundException {
        throw new ClassNotFoundException();
    }

    void handleErrorByThrowingAnyCheckedExceptionWithDetailMessage(String message) throws ClassNotFoundException {
        throw new ClassNotFoundException(message);
    }

    void handleErrorByThrowingAnyUncheckedException() {
        throw new ArrayIndexOutOfBoundsException();
    }

    void handleErrorByThrowingAnyUncheckedExceptionWithDetailMessage(String message) {
        throw new ArithmeticException(message);
    }

    void handleErrorByThrowingCustomCheckedException() throws CustomCheckedException {
        throw new CustomCheckedException();
    }

    void handleErrorByThrowingCustomCheckedExceptionWithDetailMessage(String message) throws CustomCheckedException {
        throw new CustomCheckedException(message);
    }

    void handleErrorByThrowingCustomUncheckedException() {
        throw new CustomUncheckedException();
    }

    void handleErrorByThrowingCustomUncheckedExceptionWithDetailMessage(String message) {
        throw new CustomUncheckedException(message);
    }

    Optional<Integer> handleErrorByReturningOptionalInstance(String integer) {
        try {
            return Optional.of(Integer.parseInt(integer));
        } catch (NumberFormatException e) {
            return Optional.empty();
        }
    }
}
