module FibonacciNumbers
  def self.get_sum_of_even
    arr = [0, 1]
    while arr.last(2).sum < 4000000
      arr.push(arr.last(2).sum)
    end
    arr.reduce(0) do |sum, num|
      sum += num if num.even?
      sum
    end
  end
end
