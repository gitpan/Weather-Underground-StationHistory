#!perl

# Taken from http://www.chrisdolan.net/talk/index.php/2005/11/14/private-regression-tests/.

use warnings;
use strict;

use Test::More;
use Test::Spelling;

set_spell_cmd('aspell -l en list');
add_stopwords(<DATA>);
all_pod_files_spelling_ok();

__DATA__
Et
et
cetera
CSV
DBI
ICAO
ICAOs
RaiseError
SQLite
Seasonality's
YYYYMMDDHHMM
hectopascals
loadSeasonalityHistory
metadata
=cut

# setup vim: set filetype=perl tabstop=4 shiftwidth=4 shiftround textwidth=0 :
# setup vim: set nowrap autoindent foldmethod=indent foldlevel=0 :
# buffer: set_noexpandtab_and_retab_when_reading :
# buffer: expand_tabs_in_output strip_trailing_whitespace_on_write :
