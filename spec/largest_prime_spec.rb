require 'rspec'
require_relative '../src/largest_prime.rb'

describe PrimeNumbers do
  describe 'check_is_prime' do
    it 'should check if number is prime or not' do
      expect(PrimeNumbers.check_is_prime(13)).to eq(true)
      expect(PrimeNumbers.check_is_prime(9)).to eq(false)
      expect(PrimeNumbers.check_is_prime(17)).to eq(true)
    end
  end
  describe 'find_largest_prime' do
    it 'should get largest prime factor of given number' do
      expect(PrimeNumbers.find_largest_prime(13195)).to eq(29)
    end
  end
end
