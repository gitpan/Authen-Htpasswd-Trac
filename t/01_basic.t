use strict;
use Test::More tests => 2;
use lib qw( lib ../lib );
use Authen::Htpasswd::Trac;
use Data::Dumper;

my $auth = Authen::Htpasswd::Trac->new('t/data/htpasswd', { trac => 't/data/trac.db' });

{
    my @rs = $auth->check_user_permissions('sample', 'sample');
    is( $rs[0], 'MILESTONE_VIEW');
    is( $rs[1], 'WIKI_VIEW');
}

