package Meetup;
use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/meetup/;
use List::Util qw/first/;

use Carp;
use Time::Piece;
use Time::Seconds;
use constant {
    WD => [qw/Sunday Monday Tuesday Wednesday Thursday Friday Saturday/] };

sub last_day_of_month {

    my ( $mon, $year ) = @_;
    my $first_of_next_month =
      $mon == 12
      ? sprintf( '%d-01-01', $year + 1 )
      : sprintf( '%d-%02d-01', $year, $mon + 1 );
    my $time = Time::Piece->strptime( $first_of_next_month, '%Y-%m-%d' );
    ( $time - ONE_DAY )->mday;
}

sub day_index {
    my $weekday = shift;
    first { WD->[$_] eq $weekday } 0 .. scalar( WD->@* - 1 );
}

sub meetup {
    my $input = shift;
    my ( $week, $weekday, $month, $year ) =
      $input =~ /(\w+) (\w+) of (\w+) (\d+)/;
    my $month_start = Time::Piece->strptime( "1 ${month} ${year}", "%d %B %Y" );
    my $start_day =
      $week eq 'Last'
      ? ( last_day_of_month( $month_start->mon, $year ) - 6 )
      : { First => 1, Second => 8, Third => 15, Fourth => 22, Teenth => 13 }
      ->{$week};
    my $dow        = day_index $weekday;
    my $start_time = $month_start + ( $start_day - 1 ) * ONE_DAY;
    my $delta_days = ( $dow - $start_time->day_of_week ) % 7;
    ( $start_time + $delta_days * ONE_DAY )->ymd;
}
1;
