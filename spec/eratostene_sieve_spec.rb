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

  describe '.enumerator' do
    it 'should return ' do
      enumerator = EratosteneSieve.enumerator
      serie = []
      (0..9).each { |i| serie << enumerator.next }
      serie.should == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    end
  end

  describe '.serie' do
    it 'should return the first 10 primes if no argument is given' do
      serie = EratosteneSieve.serie
      serie.should == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    end

    it 'should return the serie of primes from x to y if :from => x, :up_to => y options are given' do
      serie = EratosteneSieve.serie(:from => 5, :up_to => 10)
      serie.should == [11, 13, 17, 19, 23, 29]
    end

    it 'should fail if :from is not an Integer' do
      lambda{
        EratosteneSieve.serie(:from => 'a', :up_to => 10)
      }.should raise_error
    end

    it 'should fail if :up_to is not an Integer' do
      lambda{
        EratosteneSieve.serie(:from => 1, :up_to => :error)
      }.should raise_error
    end

    it 'should fail if :from < 1' do
      lambda{
        EratosteneSieve.serie(:from => 0, :up_to => 10)
      }.should raise_error
    end

    it 'should give a reversed array of the serie if :from > :up_to' do
      EratosteneSieve.serie(:from => 10, :up_to => 1).should == EratosteneSieve.serie(:from => 1, :up_to => 10).reverse
    end
  end
end
