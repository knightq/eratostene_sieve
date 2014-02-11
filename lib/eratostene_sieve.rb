require 'eratostene_sieve/version'
require 'eratostene_sieve/railtie' if defined? Rails

# Utility to get:
# - nth_prime(n): the nth prime number.
# - enumerator: an enumerator on prime number serie.
module EratosteneSieve
  Inf = 1.0 / 0.0

  def self.nth_prime(index)
    return first_primes[index] if index < first_primes.size
    counter = first_primes.size - 1
    ((first_primes.last + 2)..Inf).step(2) do |candidate|
      (2..((candidate**0.5).to_i)).each do |m|
        break if candidate % m == 0
        counter += 1 if m == (candidate**0.5).to_i
      end
      return candidate.to_i if counter == index
    end
  end

  def self.enumerator
    Enumerator.new do |y|
      a = 2
      b = 3
      index = 3
      loop do
        y << a
        a, b = b, nth_prime(index)
        index += 1
      end
    end
  end

  private

  def self.first_primes
    @first_primes ||= [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31]
  end
end
