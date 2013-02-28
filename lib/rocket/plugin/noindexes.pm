# rocket - static website generator
# Copyright © 2006-2013 Robert Norris
# Artistic license v2

package rocket::plugin::noindexes;

use base qw(rocket::plugin);

sub priority {
    return {
        indexlist => 99,
    };
}

sub indexlist {
    my ($self, $posts, $indexes) = @_;
    %$indexes = ();
    return 1;
}

1;
