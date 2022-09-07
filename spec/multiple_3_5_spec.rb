require 'rspec'
require_relative '../src/multiple_3_5.rb'

describe 'find_sum_loop' do
  it 'should find sum of all numbers below 1000 which is multiple of 3 or 5' do
    expect(FindSumOfMultiples.find_sum_loop).to eq(233168)
  end
end
