require 'rspec'
require_relative '../src/largest_product.rb'

describe 'get_biggest_product_sequence' do
  it 'should find largest palindrome for multiple of n-digit numbers' do
    expect(LargestProduct.get_biggest_product_sequence(13)).to eq(23514624000)
    expect(LargestProduct.get_biggest_product_sequence(4)).to eq(5832)
  end
end
