class MicroBlog {
    public static final int MAX_SIZE = 5;

    public String truncate(String input) {
        return input.codePoints().limit(MAX_SIZE).collect(StringBuilder::new, 
                StringBuilder::appendCodePoint, StringBuilder::append).toString();
    }
}
