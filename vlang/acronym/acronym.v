module main

fn abbreviate(s string) string {
    return s
        .to_upper()
        .replace_each(['-', ' ', '_', ''])
        .split(' ')
        .filter(it != '')
        .map(it[0].ascii_str())
        .join('')
    }

