# rocket - static website generator
# Copyright © 2006-2013 Robert Norris
# Artistic license v2

package rocket::plugin::assets;

use base qw(rocket::plugin);

sub extrafiles {
    my ($self, $extrafiles) = @_;

    opendir my $dir, $rocket::SOURCE_DIR;
    map { $extrafiles->{$_} = $_ } grep { m/\.(?:png|gif|css|js)$/ or m/^\.[^\.]/ } readdir $dir;
    closedir $dir;

    return 1;
}

1;
