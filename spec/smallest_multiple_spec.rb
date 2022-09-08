require 'rspec'
require_relative '../src/smallest_multiple.rb'

describe 'find_smallest_multiple' do
  it 'should find smallest number that can be devided by all numbers from array' do
    expect(SmallestMultiple.get_smallest_multiple_for(10)).to eq(2520)
  end
end
