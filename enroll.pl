#!/usr/bin/env perl

use warnings;
use strict;
use WWW::Mechanize;

use CGI qw/:standard/;


my %config = do "/secret/cc.config";

my $lastName		= $config{'lastName'};
my $last4				= $config{'last4'};
my $zip					= $config{'zip'};

my $url = "https://www.chasebonus.com/MicrositeFrame.aspx";

#$ENV{PERL_LWP_SSL_VERIFY_HOSTNAME} = 0;

my $mech = WWW::Mechanize->new();
$mech->get($url);

$mech->submit_form(
		fields          => {
		lastName        => $lastName,
		last4        => $last4,
		zip        => $zip,
		}
		);

#my $stuff = $mech->content();
#print $stuff;
