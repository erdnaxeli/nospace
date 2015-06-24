use Irssi 20020101.0250 ();
$VERSION = "1";
%IRSSI = (
    authors     => 'Morignot Alexandre',
    contact     => 'erdnaxeli@gmail.com',
    name        => 'nospace',
    description => 'block sending of messages starting with a space, to prevent fails',
    license     => 'WTFPL',
    url         => 'nop',
);

use strict;

sub block
{
    Irssi::signal_stop() if ($msg =~ /^\s/);
}

Irssi::signal_add('message own_public', 'block');
