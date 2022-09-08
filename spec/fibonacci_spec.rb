require 'rspec'
require_relative '../src/fibonacci.rb'

fib_nums = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578]
event_fib_sum = fib_nums.filter {|num| num.even?}.reduce(:+)

describe 'get_sum_of_even' do
  it 'should correctly get even Fibonacci numbers sum' do
    expect(FibonacciNumbers.get_sum_of_even).to eq(event_fib_sum)
  end
end
