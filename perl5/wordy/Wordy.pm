package Wordy;
use strict;
use warnings;

use Exporter qw/import/;
our @EXPORT_OK = qw/answer/;
use constant {
    PLUS                    => 'plus',
    MINUS                   => 'minus',
    MULTIPLIED              => 'multiplied',
    DIVIDED                 => 'divided',
    ERROR_UNKNOWN_OPERATION => 'unknown operation',
    ERROR_SYNTAX_ERROR      => 'syntax error',
};
use constant valid_operators => [ PLUS, MINUS, MULTIPLIED, DIVIDED ];

sub answer {
    my $question = shift;
    die ERROR_UNKNOWN_OPERATION if $question !~ /^What is/;

    $question =~ s@^What is@@;
    $question =~ s@^\s@@;
    $question =~ s@\?$@@;
    my @statements = split / /, $question;
    return $statements[0] if scalar @statements == 1;
    my $answer = shift @statements;
    die ERROR_SYNTAX_ERROR if !defined $answer;
    while (scalar @statements) {
        my $op = shift @statements;
        die ERROR_SYNTAX_ERROR if $op =~ /\d/;
        die ERROR_UNKNOWN_OPERATION if !grep /^$op$/, valid_operators->@*;

        if ($op eq MULTIPLIED || $op eq DIVIDED) {
            shift @statements; #ignore "by"
        }
        my $operand = shift @statements;

        die ERROR_SYNTAX_ERROR if !defined $operand || $operand =~ /[a-zA-Z]/;

        if ($op eq PLUS) {
            $answer += $operand;
        }
        elsif ($op eq MINUS) {
            $answer -= $operand;
        }
        elsif ($op eq MULTIPLIED) {
            $answer *= $operand;
        }
        elsif ($op eq DIVIDED) {
            $answer /= $operand;
        }
        else {
            die ERROR_UNKNOWN_OPERATION;
        }
    }
    $answer;
}
1;
