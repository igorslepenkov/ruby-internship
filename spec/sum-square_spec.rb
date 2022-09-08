require 'rspec'
require_relative '../src/sum-square.rb'

describe 'get_difference_in' do
  it 'should get difference of sum of squares and square of sum of all natural numbers in range' do
    expect(SumSquare.get_difference_in(1..10)).to eq(2640)
    expect(SumSquare.get_difference_in(1..100)).to eq(25164150)
  end
end
