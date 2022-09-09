require 'rspec'
require_relative '../src/10001st_prime.rb'

describe 'find_prime' do
  it 'should return value of prime number with order n' do
    expect(FindPrime.find_prime(10)).to eq(29)
    expect(FindPrime.find_prime(10001)).to eq(104743)
  end
end
