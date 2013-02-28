# rocket - static website generator
# Copyright © 2006-2013 Robert Norris
# Artistic license v2

package rocket::plugin::module;

use base qw(rocket::plugin);

use Text::Markdown qw(markdown);

sub new {
    my ($class) = @_;

    my $self = {};

    opendir my $dh, $rocket::SOURCE_DIR;
    my @modules = grep { m/\.(?:md|html)$/ } readdir $dh;
    closedir $dh;

    for my $module (@modules) {
        open my $fh, "<", "$rocket::SOURCE_DIR/$module";
        my $raw = do { local $/; <$fh> };
        close $fh;

        my ($name, $type) = $module =~ m/([^\.]+)\.(md|html)$/;

        $self->{"module::$name"} = $type eq "md" ? markdown($raw) : $raw;
    }

    return if !keys %$self;

    return bless $self, $class;
}

sub content {
    my ($self, $stash, $postdata) = @_;

    while (my ($key, $value) = each %$self) {
        $stash->{$key} = $value;
    }

    return 1;
}

1;
