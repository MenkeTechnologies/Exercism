let isSilence = s => s == "";
let isQuestion = s => s != "" && s.[String.length(s) - 1] == '?';
let isShouting = s =>
  Js.Re.test_([%re "/[A-Z]/"], s) && !Js.Re.test_([%re "/[a-z]/"], s);

let hey = s => {
  let nows = Js.String.replaceByRe([%re "/\\s/g"], "", s);

  switch (isSilence(nows), isShouting(nows), isQuestion(nows)) {
  | (true, _, _) => "Fine. Be that way!"
  | (_, true, true) => "Calm down, I know what I'm doing!"
  | (_, true, false) => "Whoa, chill out!"
  | (_, false, true) => "Sure."
  | _ => "Whatever."
  };
};
