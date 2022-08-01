-module(gigasecond).
-export([from/1, test_version/0]).
from({Y, M, D}) ->
    from({{Y, M, D}, {0, 0, 0}});
from(DateTime) ->
  Seconds = calendar:datetime_to_gregorian_seconds(DateTime),
  GS = math:pow(10,9),
  calendar:gregorian_seconds_to_datetime(Seconds + round(GS)).
test_version() -> 1.
