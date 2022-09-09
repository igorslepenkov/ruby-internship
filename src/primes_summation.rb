require 'prime'

module SumOfPrimes
  def self.find_sum_of_primes_for(highest_value)
    primes_arr = Prime.first(highest_value)
    primes_arr.filter{|num| num < highest_value}.sum
  end
end
