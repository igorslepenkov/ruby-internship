module PrimeNumbers
  def self.check_is_prime(number)
    !(2...number).any? {|x| number % x == 0}
  end

  def self.find_largest_prime(number)
    (2..(Math.sqrt(number)).round).reduce(0) do |max_prime, num|
      max_prime = num if (number % num == 0) && self.check_is_prime(num)
      max_prime
    end
  end
end
