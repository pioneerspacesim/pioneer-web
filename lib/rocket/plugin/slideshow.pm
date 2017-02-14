# rocket - static website generator
# Copyright © 2006-2013 Robert Norris
# Artistic license v2
#
package rocket::plugin::slideshow;

use 5.010;
use warnings;
use strict;
use experimental qw(switch);

use base qw(rocket::plugin);

sub format_video {
    my ($v) = @_;
    my ($type, $id) = split ':', $v;
    given ($type) {
        when ("vimeo") {
            return qq{
                <iframe src="https://player.vimeo.com/video/$id?title=0&byline=0&portrait=0&badge=0" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
            };
        }
        default {
            die "unknown video type for '$v'";
        }
    }
}

sub content {
    my ($self, $stash, $postdata) = @_;

    my @videos = qw(
        vimeo:78452479
    );

    opendir my $dir, "$rocket::SOURCE_DIR/assets";
    my @screenshots = sort grep { m/^ss\d+\.png$/ } readdir $dir;
    closedir $dir;

    my $html = join '', (
        '<ul id="slider">'
    );

    do { $html .= q{<li>}.format_video($_).q{</li>} } for @videos;

    $html .= qq{<li><img src="$_"></li>} for map { "assets/$_" } @screenshots;

    $html .= join '', (
        '</ul>',
        '<div id="slider-spacer"></div>',
    );

    $stash->{"slideshow::slideshow"} = $html;

    return 1;
}

1;
