require 'rspec'
require_relative '../src/smallest_multiple.rb'

describe 'get_smallest_multiple_for' do
  it 'should get smallest number that can be devided by all numbers from range (1-max_number_in_range)' do
    expect(SmallestMultiple.get_smallest_multiple_for(10)).to eq(2520)
  end
end
