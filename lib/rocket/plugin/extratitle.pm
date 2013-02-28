# rocket - static website generator
# Copyright © 2006-2013 Robert Norris
# Artistic license v2

package rocket::plugin::extratitle;

use base qw(rocket::plugin);

sub content {
    my ($self, $stash, $postdata) = @_;

    if (!exists $stash->{"rocket::index"} and length $stash->{"rocket::title"} > 0) {
        $stash->{"extratitle::extratitle"} = $stash->{"rocket::title"}." - ";
    }
    else {
        $stash->{"extratitle::extratitle"} = "";
    }

    return 1;
}

1;
