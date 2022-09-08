require 'rspec'
require_relative '../src/pythagorean.rb'

describe 'find_triplet_product' do
  it 'should find product of unique pythagorean triplet(a,b,c) for a+b+c = 1000' do
    expect(Pythagorean.find_triplet_product_from(50)).to eq(3600)
  end
end
