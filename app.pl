#!/usr/bin/env perl
use Mojolicious::Lite -signatures;
use feature qw<say>;

any "/" => sub ($c) {
    say $c->req->to_string;
    return $c->render( status => 200, text => "" );
};
any "/*any" => sub ($c) {
    say $c->req->to_string;
    return $c->render( status => 200, text => "" );
};

app->start;

