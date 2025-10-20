use strict;
use warnings;
package Alien::SIMDe;

use base qw( Alien::Base );

=head1 NAME

Alien::SIMDe - Find or build the SIMDe library

=head1 SYNOPSIS

 use Alien::SIMDe;
 
 my $include_dir = Alien::SIMDe->cflags;

Install the SIMDe portable intrinsics header only library.

=head1 DESCRIPTION

This module provides access to the SIMDe (SIMD Everywhere) library, which
offers portable implementations of SIMD intrinsics across various architectures.


=head1 SEE ALSO

=over 4

=item L<SIMDe|https://github.com/simd-everywhere/simde>

(From the SIMDe GitHub repository)
The SIMDe header-only library provides fast, portable implementations of SIMD intrinsics on hardware which doesn't natively support them, such as calling SSE functions on ARM. There is no performance penalty if the hardware supports the native implementation (e.g., SSE/AVX runs at full speed on x86, NEON on ARM, etc.).

This makes porting code to other architectures much easier in a few key ways:

First, instead of forcing you to rewrite everything for each architecture, SIMDe lets you get a port up and running almost effortlessly. You can then start working on switching the most performance-critical sections to native intrinsics, improving performance gradually. SIMDe lets (for example) SSE/AVX and NEON code exist side-by-side, in the same implementation.

Second, SIMDe makes it easier to write code targeting ISA extensions you don't have convenient access to. You can run NEON code on your x86 machine without an emulator. Obviously you'll eventually want to test on the actual hardware you're targeting, but for most development, SIMDe can provide a much easier path.

SIMDe takes a very different approach from most other SIMD abstraction layers in that it aims to expose the entire functionality of the underlying instruction set. Instead of limiting functionality to the lowest common denominator, SIMDe tries to minimize the amount of effort required to port while still allowing you the space to optimize as needed.


=item L<Alien>

Documentation on the Alien concept itself.

=item L<Alien::Base>

The base class for this Alien.

=item L<Alien::Build::Manual::AlienUser>

Detailed manual for users of Alien classes.

=back

=head1 AUTHOR

Christos Argyropoulos <chrisarg@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2025 by Christos Argyropoulos.

This is distributed under the BSD-2 license

=cut
1;
