let twoFer = name => {

    let name = switch (name) {
    | Some(name) => name
    | None => "you"
    };

    "One for " ++ name ++ ", one for me.";

}
