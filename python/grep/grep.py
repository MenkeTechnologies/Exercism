def is_relevant(line, pattern, invert_match):
    return pattern not in line if invert_match else pattern in line

def handle_file(file, print_file_name, print_line_numbers, file_name_if_not_empty, ignore_case, pattern, invert_match):
    prefix = f"{file}:" if print_file_name else ""
    lines = [prefix + (f"{nr + 1}:" if print_line_numbers else "") + line for nr, line in
             enumerate(open(file).readlines()) if is_relevant(line.lower() if ignore_case else line, pattern, invert_match)]
    return "" if not lines else f"{file}\n" if file_name_if_not_empty else "".join(lines)

def grep(pattern, flags, files):
    print_line_numbers, file_name_if_not_empty, ignore_case, invert_match, match_entire_lines = [f in flags for f in ["-n", "-l", "-i", "-v", "-x"]]
    print_file_name = len(files) > 1
    pattern = (pattern.lower() if ignore_case else pattern) + ("\n" if match_entire_lines else "")

    return "".join(map(lambda f: handle_file(f, print_file_name, print_line_numbers, file_name_if_not_empty, ignore_case, pattern, invert_match), files))
