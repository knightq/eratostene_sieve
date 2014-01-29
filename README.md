[![Build Status](https://travis-ci.org/knightq/eratostene_sieve.png?branch=master)](https://travis-ci.org/knightq/eratostene_sieve)
[![Dependency Status](https://gemnasium.com/knightq/eratostene_sieve.png)](https://gemnasium.com/knightq/eratostene_sieve)

# EratosteneSieve

This gem provides you a set of minimal utilities function to manage prime numbers.

## Changelog

  - **1.0.0**: initial release. It provides just these class functions:

    - `nth_prime(n)` : retun the nth prime number.
    - `prime_serie`  : return an enumerator over the prime serie.

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

    # prime_serie example
    enumerator = EratosteneSieve.prime_serie
    serie = []
    (0..9).each { |i| serie << enumerator.next }
    puts serie # => [1, 2, 3, 5, 7, 11, 13, 17, 19, 23]

## Contributing

1. Fork it ( http://github.com/<my-github-username>/eratostene_sieve/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
