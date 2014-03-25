#!/Users/travis/perl5/perlbrew/perls/perl-5.18.2/bin/perl

$format1 = shift;
$format2 = shift;

use Bio::AlignIO;

$in = Bio::AlignIO->newFh('-format' => $format1 );
$out = Bio::AlignIO->newFh('-format' => $format2 );

print $out $_ while <$in>;