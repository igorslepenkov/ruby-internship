require 'prime'

module FindPrime
  def self.find_prime(n)
    (Prime.first n)[-1]
  end
end