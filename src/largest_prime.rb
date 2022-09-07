module PrimeNumbers
  def self.check_is_prime(number)
    res = true
    (2..(Math.sqrt(number)).round).each do |x|
      res = false if number % x == 0
    end
    return res
  end

  def self.find_largest_prime(number)
    (2..(Math.sqrt(number)).round).reduce(0) do |max_prime, num|
      max_prime = num if (number % num == 0) && self.check_is_prime(num)
      max_prime
    end
  end

end
