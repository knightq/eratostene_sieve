# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eratostene_sieve/version'

Gem::Specification.new do |spec|
  spec.name          = 'eratostene_sieve'
  spec.version       = EratosteneSieve::VERSION
  spec.authors       = ['Andrea Salicetti']
  spec.email         = ['andrea.salicetti@gmail.com']
  spec.summary       = %q{A bunch of utilities to play with prime numbers.}
  spec.description   = %q{Gem to play with prime numbers}
  spec.homepage      = 'http://www.andreasalicetti.com'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
