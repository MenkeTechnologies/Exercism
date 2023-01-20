class CustomUncheckedException extends IllegalArgumentException {
    CustomUncheckedException() {
        super();
    }

    CustomUncheckedException(String message) {
        super(message);
    }
}
