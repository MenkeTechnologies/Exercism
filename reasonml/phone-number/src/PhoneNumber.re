let phoneNumber = s => {
  let regex = [%re
    {|/^\s*(?:\+1|1)?[\s.-]*\(?([2-9]\d{2})\)?[\s.-]*\(?([2-9]\d{2})\)?[\s.-]*\(?(\d{4})\)?\s*$/|}
  ];
  Js.String.match(regex, s)
  ->Belt.Option.map(arr => arr[1] ++ arr[2] ++ arr[3]);
};
