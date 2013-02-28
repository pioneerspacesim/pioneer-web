# rocket - static website generator
# Copyright © 2006-2013 Robert Norris
# Artistic license v2

package rocket::plugin::markdown;

use base qw(rocket::plugin);

use Text::MultiMarkdown qw(markdown);

sub priority {
    return {
        content => 30,
    };
}

sub content {
    my ($self, $stash, $postdata) = @_;

    $stash->{"rocket::content"} = markdown($stash->{"rocket::content"});

    return 1;
}

1;
