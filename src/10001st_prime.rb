require 'prime'

module FindPrime
  def self.find_prime(n)
    (Prime.first n).last
  end
end
