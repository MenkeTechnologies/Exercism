import times

proc addGigasecond*(moment: DateTime): DateTime = moment + int(1e9).seconds
