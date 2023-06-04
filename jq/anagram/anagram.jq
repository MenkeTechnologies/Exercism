def lcsort: ascii_downcase | split("") | sort | join("");

(.subject | ascii_downcase) as $lcCand |
(.subject | lcsort) as $candidate |
.candidates |
map(select(ascii_downcase != $lcCand and lcsort == $candidate))
