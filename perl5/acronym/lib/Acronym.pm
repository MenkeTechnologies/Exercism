package Acronym;
use v5.40;

use Exporter qw<import>;
our @EXPORT_OK = qw<abbreviate>;

sub abbreviate ($s) {
  uc join '', $s =~ /\b[^a-z]?([a-z])[\w']*\b/gi;
}
1;
