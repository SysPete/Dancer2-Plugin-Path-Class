use 5.010001;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => q{Dancer2::Plugin::Path::Class},
    AUTHOR           => q{Henk van Oers <hvo.pm@xs4all.nl>},
    VERSION_FROM     => q{lib/Dancer2/Plugin/Path/Class.pm},
    ABSTRACT_FROM    => q{lib/Dancer2/Plugin/Path/Class.pm},
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.010001,
    ($ExtUtils::MakeMaker::VERSION >= 6.48
      ? ( LICENSE => q{perl})
      : ()),
    PREREQ_PM => {
        'Dancer2'              => 0.158000,
        'Path::Class'          => 0,
        'Fcntl'                => 0,
        'Format::Human::Bytes' => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Dancer2-Plugin-Path-Class-*' },
    META_MERGE => {
        resources => {
            repository => 'https://github.com/hvoers/Dancer2-Plugin-Path-Class',
            bugtracker => 'https://github.com/hvoers/Dancer2-Plugin-Path-Class/issues',
            homepage   => 'https://github.com/hvoers/Dancer2-Plugin-Path-Class/',
        },
    },
);
