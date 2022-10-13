import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class GrepTool {
    private boolean showLineNum;
    private boolean caseInsensitive;
    private boolean printFileNameOnly;
    private boolean matchEntireLine;
    private boolean inverted;
    private boolean multipleFilesMode;

    public String grep(String pattern, List<String> flagList, List<String> fileList) {
        processFlags(flagList);
        return grepOnMultipleFiles(pattern, fileList);
    }

    public void processFlags(List<String> flagList) {
        showLineNum = flagList.contains("-n");
        caseInsensitive = flagList.contains("-i");
        printFileNameOnly = flagList.contains("-l");
        matchEntireLine = flagList.contains("-x");
        inverted = flagList.contains("-v");
    }

    public String grepOnMultipleFiles(String pattern, List<String> fileList) {
        if (fileList.size() > 1) multipleFilesMode = true;
        StringBuilder sb = new StringBuilder();
        List<String> collect = fileList.stream().parallel().map(file -> grepOnSingleFile(pattern, file)).toList();
        collect.forEach(sb::append);
        if (sb.length() != 0) trimLastNewLine(sb);
        return sb.toString();
    }

    public String grepOnSingleFile(String pattern, String file) {
        try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
            return grepOnSingleFile(pattern, file, reader);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "";
    }

    public void trimLastNewLine(StringBuilder sb) {
        sb.setLength(sb.length() - 1);
    }

    public String grepOnSingleFile(String pattern, String file, BufferedReader reader) throws IOException {
        Pattern ptn = compilePattern(pattern);
        StringBuilder sb = new StringBuilder();
        String line = reader.readLine();
        for (int lineNum = 1; line != null; lineNum++) {
            if (match(ptn, line)) {
                if (printFileNameOnly) return file + "\n";
                String formatted = formattedLine(file, lineNum, line);
                sb.append(formatted).append("\n");
            }
            line = reader.readLine();
        }
        return sb.toString();
    }

    public Pattern compilePattern(String pattern) {
        int flag = Pattern.LITERAL | (caseInsensitive ? Pattern.CASE_INSENSITIVE : 0);
        return Pattern.compile(pattern, flag);
    }

    public boolean match(Pattern pattern, String toMatch) {
        Matcher matcher = pattern.matcher(toMatch);
        boolean ret = matchEntireLine ? matcher.matches() : matcher.find();
        return inverted != ret;
    }

    public String formattedLine(String file, int lineNum, String line) {
        StringBuilder sb = new StringBuilder();
        if (multipleFilesMode) {
            sb.append(file);
            sb.append(":");
        }
        if (showLineNum) {
            sb.append(lineNum);
            sb.append(":");
        }
        sb.append(line);
        return sb.toString();
    }
}
