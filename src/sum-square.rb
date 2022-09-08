module SumSquare
  def self.get_difference_in(range)
    sum_of_squares = range.collect {|x| x.pow(2)}.sum
    square_of_sum = range.sum.pow(2)
    square_of_sum - sum_of_squares
  end
end
