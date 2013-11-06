# rocket - static website generator
# Copyright © 2006-2013 Robert Norris
# Artistic license v2
#
package rocket::plugin::slideshow;

use warnings;
use strict;

use base qw(rocket::plugin);

sub content {
    my ($self, $stash, $postdata) = @_;

    opendir my $dir, "$rocket::SOURCE_DIR/assets";
    my @screenshots = sort grep { m/^ss\d+\.png$/ } readdir $dir;
    closedir $dir;

    my $html = join '', (
        '<ul id="slider">'
    );

    $html .= qq{<li><img src="$_"></li>} for map { "assets/$_" } @screenshots;

    $html .= join '', (
        '</ul>',
        '<div id="slider-spacer"></div>',
    );

    $stash->{"slideshow::slideshow"} = $html;

    return 1;
}

1;
