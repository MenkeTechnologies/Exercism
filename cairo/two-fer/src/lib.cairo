pub fn response(name: Option<ByteArray>) -> ByteArray {
    let name_default = name.unwrap_or("you");
    format!("One for {name_default}, one for me.")
}
