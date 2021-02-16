use regex::Regex;

pub fn abbreviate(phrase: &str) -> String {
    let mut f = String::new();

    let re = Regex::new(r"('s|[,_:-])").unwrap();
    let re2 = Regex::new(r"([a-z])([A-Z])").unwrap();
    let re3 = Regex::new(r"(\w+)-(\w+)").unwrap();

    let mut result = String::from(phrase);

    result = re3.replace_all(result.as_str(), "${1} ${2}").to_string();

    result = re.replace_all(result.as_str(), "").to_string();

    result = re2.replace_all(result.as_str(), "${1} ${2}").to_string();

    for x in result.split(" ") {
        let string = x.to_ascii_uppercase();
        let option = string.get(0..1);
        f.push_str(option.unwrap_or(""));
    }

    f
}
