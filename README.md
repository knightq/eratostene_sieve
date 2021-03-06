# EratosteneSieve [![Build Status](https://travis-ci.org/knightq/eratostene_sieve.png?branch=master)](https://travis-ci.org/knightq/eratostene_sieve) [![Dependency Status](https://gemnasium.com/knightq/eratostene_sieve.png)](https://gemnasium.com/knightq/eratostene_sieve) [![Coverage Status](https://coveralls.io/repos/knightq/eratostene_sieve/badge.png)](https://coveralls.io/r/knightq/eratostene_sieve) [![GitHub version](https://badge.fury.io/gh/knightq%2Feratostene_sieve.png)](http://badge.fury.io/gh/knightq%2Feratostene_sieve)

This gem provides you a set of minimal utility functions to manage prime numbers.

## Changelog

  - **0.0.3**:

    - Renames .prime_serie into .enumerator.
    - Adds .serie class method.

  - **0.0.2**: Fix .prime_serie.

  - **0.0.1**: initial release. It provides just these class functions:

    - `nth_prime(n)` : retun the nth prime number.
    - `enumerator`  : return an enumerator over the prime serie.

## Installation

Add this line to your application's Gemfile:

    gem 'eratostene_sieve'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install eratostene_sieve

## Usage

  Just require eratostene_sieve wherever you want to user a function it provides:

    require 'eratostene_sieve'

  Then call the function you like in your code:

    # nth_prime(n) example
    EratosterneSieve.nth_prime(10) # => 29

    # enumerator example
    enumerator = EratosteneSieve.enumerator
    serie = []
    (0..9).each { |i| serie << enumerator.next }
    puts serie # => [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]

    # serie example
    serie = EratosteneSieve.serie(:from => 1, :up_to => 10)
    puts serie # => [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]

## Contributing

1. Fork it ( http://github.com/<my-github-username>/eratostene_sieve/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
