acronym = function(input) {
    cl = gsub("[_,]", "", gsub("[-]", " ", toupper(input)))
    v = unlist(strsplit(cl, " "))
    paste(sub(r"{^(\w)\S*}", r"{\1}", v), collapse = '')
}
