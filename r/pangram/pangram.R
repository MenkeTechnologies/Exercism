is_pangram = function(input) {
    letters = gsub("[^a-z]", "", tolower(input))
    frequency_table = table(unlist(strsplit(letters , "")))
    length(frequency_table) == 26
}
