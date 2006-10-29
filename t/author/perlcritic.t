#!perl

use Test::Perl::Critic (-severity => 3);
use Module::Build;
use File::Spec::Functions;


my $build;

BEGIN {
    $build = Module::Build->current();
} # end BEGIN

all_critic_ok(catfile($build->base_dir(), 'lib'), catfile($build->base_dir(), 'script'));

# setup vim: set filetype=perl tabstop=4 shiftwidth=4 shiftround textwidth=0 :
# setup vim: set nowrap autoindent foldmethod=indent foldlevel=0 :
# buffer: set_noexpandtab_and_retab_when_reading :
# buffer: expand_tabs_in_output strip_trailing_whitespace_on_write :
