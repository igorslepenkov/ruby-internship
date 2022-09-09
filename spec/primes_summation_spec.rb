require 'rspec'
require_relative '../src/primes_summation.rb'

describe 'find_sum_of_primes_for' do
  it 'should find sum of all prime numbers from 2 to highest_value' do
    expect(SumOfPrimes.find_sum_of_primes_for(10)).to eq(17)
  end
end
