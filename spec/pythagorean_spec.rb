require 'rspec'
require_relative '../src/pythagorean.rb'

describe 'find_triplet_product_from' do
  it 'should find product of unique pythagorean triplet(a,b,c) for a+b+c = sum where only sum is defined' do
    expect(Pythagorean.find_triplet_product_from(12)).to eq(60)
    expect(Pythagorean.find_triplet_product_from(1000)).to eq(31875000)
  end
end
