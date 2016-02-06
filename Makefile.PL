#!/usr/bin/perl

use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME               => 'XML::SAX::Simple',
    AUTHOR             => 'Matt Sergeant, <matt@sergeant.org>',
    VERSION_FROM       => 'lib/XML/SAX/Simple.pm',
    LICENSE            => 'perl_5',
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES     => {
        'Test::More'   => 0,
    },
    PREREQ_PM          => {
        'XML::Simple'         => 1.06,
        'XML::SAX'            => 0.02,
        'XML::Handler::Trees' => 0.02,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'XML-SAX-Simple-*' },
);