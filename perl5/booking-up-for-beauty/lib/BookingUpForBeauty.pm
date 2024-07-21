package BookingUpForBeauty;

use v5.38;

use Time::Piece;
use Exporter 'import';

our @EXPORT_OK = qw<appointment_has_passed is_afternoon_appointment describe_appointment>;
my $STRPTIME_FORMAT = '%Y-%m-%dT%H:%M:%S';

sub appointment_has_passed ($date_string) {
    my $time = Time::Piece->strptime($date_string, $STRPTIME_FORMAT);
    $time < localtime;
}

sub is_afternoon_appointment ($date_string) {
    my $time = Time::Piece->strptime($date_string, $STRPTIME_FORMAT);
    12 <= $time->hour < 18;
}

sub describe_appointment ($date_string) {
    my $time = Time::Piece->strptime($date_string, $STRPTIME_FORMAT);
    $time->strftime('You have an appointment on %m/%d/%Y %-I:%M %p');
}
