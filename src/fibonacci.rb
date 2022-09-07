module FibonacciNumbers
  def self.get_sum_of_even
    arr = [0, 1]
    while arr[-1] + arr[-2] < 4000000
      arr.push(arr[-1] + arr[-2])
    end
    sum = arr.reduce(0) do |sum, num|
      sum += num if num.even?
      sum
    end
  end
end
