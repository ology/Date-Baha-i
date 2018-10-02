#!/usr/bin/env perl
use strict;
use warnings;

use Test::More;

use_ok 'Date::Baha::i';

my %d = to_bahai(
    year  => 2018,
    month => 10,
    day   => 2,
);

my $expected = {
    cycle       => 10,
    dow_name    => 'Fidal',
    day         => 6,
    cycle_year  => 4,
    year        => 175,
    cycle_name  => 'Hubb',
    month       => 11,
    month_name  => 'Mashiyyat',
    year_name   => 'Dal',
    day_name    => 'Rahmat',
    dow         => 4,
    kull_i_shay => 1
};

is_deeply \%d, $expected, 'to_bahai';

done_testing();
