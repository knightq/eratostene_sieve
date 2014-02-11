require 'spec_helper'

describe EratosteneSieve do

  describe '.nth_prime' do
    it 'should output the nth prime number' do
      EratosteneSieve.nth_prime(1).should be_eql(2)
      EratosteneSieve.nth_prime(2).should be_eql(3)
      EratosteneSieve.nth_prime(3).should be_eql(5)
      EratosteneSieve.nth_prime(4).should be_eql(7)
      EratosteneSieve.nth_prime(10).should be_eql(29)
      EratosteneSieve.nth_prime(20).should be_eql(71)
      EratosteneSieve.nth_prime(30).should be_eql(113)
      EratosteneSieve.nth_prime(100).should be_eql(541)
      EratosteneSieve.nth_prime(200).should be_eql(1223)
    end
  end

  describe '.prime_serie' do
    it 'should return ' do
      enumerator = EratosteneSieve.prime_serie
      serie = []
      (0..9).each { |i| serie << enumerator.next }
      serie.should == [1, 2, 3, 5, 7, 11, 13, 17, 19, 23]
    end
  end
end
