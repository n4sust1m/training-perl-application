#!/bin/env perl

## see: https://perldoc.jp/docs/modules/libwww-perl-5.813/HTTP/Daemon.pod
use HTTP::Daemon;
use HTTP::Status;

my $d = HTTP::Daemon->new || die;
print "Please contact me at: <URL:", $d->url, ">\n";
while (my $c = $d->accept) {
    while (my $r = $c->get_request) {
        if ($r->method eq 'GET' and $r->url->path eq "/xyzzy") {
            # remember, this is *not* recommended practice :-)
            $c->send_file_response("/etc/passwd");
        }
        else {
            $c->send_error(RC_FORBIDDEN)
        }
    }
    $c->close;
    undef($c);
}