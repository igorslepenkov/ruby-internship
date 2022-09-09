module FindSumOfMultiples 
  def self.find_sum_loop
    (0...1000).reduce(0) do |sum, num|
      sum += num if num % 3 == 0 || num % 5 == 0
      sum
    end
  end
end
