require 'rspec'
require_relative '../src/largest_palindrome.rb'

describe 'find_largest_palindrome' do
  it 'should find largest palindrome for multiple of n-digit numbers' do
    expect(PolindromeNumbers.find_largest_palindrome(2)).to eq(9009)
  end
end
