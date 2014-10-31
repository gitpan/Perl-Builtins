use 5.008;
use warnings;
package Perl::Builtins;
$Perl::Builtins::VERSION = '0.02';
use Pod::Functions '%Type';

#ABSTRACT: A list of all Perl 5 built functions


sub list { wantarray ? keys %Type : [ keys %Type ] }

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Perl::Builtins - A list of all Perl 5 built functions

=head1 VERSION

version 0.02

=head2 SYNOPSIS

    use Perl::Builtins;

    # get an array of functions
    my @builtin_functions = Perl::Builtins::list;

    # get an arrayref instead
    my $builtin_functions = Per::Builts::list;

=head2 DESCRIPTION

This module simply returns a list of strings of all the builtin functions in Perl. In scalar context it returns an arrayref.

=head2 RATIONALE

I wrote this module because several times I have needed a list of all builtin functions in Perl, and couldn't find an easy way to get it. Then Father Chrysostomos pointed me towards L<B::Keywords>. You should probably use that.

=head2 SEE ALSO

L<B::Keywords>

=head2 CONTRIBUTORS

John D Jones III, Father Chrysostomos

=head1 AUTHOR

David Farrell <sillymoos@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by David Farrell.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
