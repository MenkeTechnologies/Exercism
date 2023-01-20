import java.io.FileNotFoundException;

class CustomCheckedException extends FileNotFoundException {
    CustomCheckedException() {
        super();
    }

    CustomCheckedException(String message) {
        super(message);
    }
}
