# rocket - static website generator
# Copyright © 2006-2013 Robert Norris
# Artistic license v2

package rocket::plugin::flavourfile;

use base qw(rocket::plugin);

use constant FLAVOURS => qw(html);

sub priority {
    return {
        flavour => 55,  # override internal templates
    };
}

sub flavour {
    my ($self, $flavours) = @_;

    for my $flavour (FLAVOURS) {
        my $fh;

        open $fh, "<", "$rocket::SOURCE_DIR/head.$flavour" or die "couldn't open '$rocket::SOURCE_DIR/head.$flavour' for read: $!";
        my $head = do { local $/; <$fh> };
        close $fh;

        open $fh, "<", "$rocket::SOURCE_DIR/content.$flavour" or die "couldn't open '$rocket::SOURCE_DIR/content.$flavour' for read: $!";
        my $content = do { local $/; <$fh> };
        close $fh;

        open $fh, "<", "$rocket::SOURCE_DIR/foot.$flavour" or die "couldn't open '$rocket::SOURCE_DIR/foot.$flavour' for read: $!";
        my $foot = do { local $/; <$fh> };
        close $fh;

        $flavours->{$flavour}->{templates}->{head} = $head;
        $flavours->{$flavour}->{templates}->{content} = $content;
        $flavours->{$flavour}->{templates}->{foot} = $foot;
    }

    return 1;
}

1;
