#!/Users/travis/perl5/perlbrew/perls/perl-5.18.2/bin/perl
use strict;
use warnings;

my $format1 = shift;
my $format2 = shift;

use Bio::AlignIO;

my $in = Bio::AlignIO->newFh( -fh => \*STDIN, '-format' => $format1 );
my $out = Bio::AlignIO->newFh(-fh => \*STDOUT, '-format' => $format2 );

print $out $_ while <$in>;