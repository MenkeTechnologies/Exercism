fun monthFromInt (input: int) =
    case input of
        1 => SOME Date.Jan | 2  => SOME Date.Feb | 3  => SOME Date.Mar
        | 4 => SOME Date.Apr | 5  => SOME Date.May | 6  => SOME Date.Jun
        | 7 => SOME Date.Jul | 8  => SOME Date.Aug | 9  => SOME Date.Sep
        | 10 => SOME Date.Oct | 11 => SOME Date.Nov | 12 => SOME Date.Dec
        | _ => NONE
fun parseDate (input: string) =
    let
        val nums = String.tokens (not o Char.isDigit) input
    in
        case List.map Int.fromString nums of
            [SOME year, SOME month, SOME day] =>
            Option.map (fn month' =>
                           Date.date { year = year,
                                       month = month',
                                       day = day,
                                       hour = 0,
                                       minute = 0,
                                       second = 0,
                                       offset = SOME Time.zeroTime })
                       (monthFromInt month)
          | [SOME year, SOME month, SOME day, SOME hour, SOME minute, SOME second] =>
            Option.map (fn month' =>
                           Date.date { year = year,
                                       month = month',
                                       day = day,
                                       hour = hour,
                                       minute = minute,
                                       second = second,
                                       offset = SOME Time.zeroTime })
                       (monthFromInt month)
          | _ => NONE
    end
fun add (moment: string) =
    let
        val date = (Option.valOf o parseDate) moment
        val later = Date.toTime date + (Time.fromSeconds o Int.toLarge o Real.trunc) 1e9
    in
        (Date.fmt "%Y-%m%-%dT%H:%M:%S" o Date.fromTimeUniv) later
    end
