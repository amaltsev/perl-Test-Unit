package SkippedTest;

use strict;

use Test::Unit::TestRunner;

use base 'Test::Unit::TestCase';

sub set_up {
    my $self = shift;
    ### print STDERR "==== set_up()\n";
}

sub tear_down {
    my $self = shift;
    ### print STDERR "==== tear_down()\n";
}

sub check_reqs {
    my $self = shift;
    my $name = shift;
    my $rc=$name =~ /skipme/ ? 0 : 1;
    ### print STDERR "=======self=$self name=$name rc=$rc\n";
    return $rc;
}

sub test_runme {
    my $self = shift;
    $self->assert(1,"Ok, this needed to run");
}

sub test_skipme {
    my $self = shift;
    $self->assert(0,"Test ran, but needed to be skipped");
}

1;
