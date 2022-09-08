module PolindromeNumbers
  def self.is_palindrome?(number)
    number.to_s == number.to_s.reverse ? true : false
  end

  def self.find_largest_palindrome(num_of_digits)
    lower_limit = 10 ** (num_of_digits-1)
    max_num = (10 ** num_of_digits) - 1
    largest_palindrome = 0;

    (lower_limit..max_num).each do |i|
      (lower_limit..max_num).each do |j|
        mult = i * j
        next if !self.is_palindrome?(mult)
        if largest_palindrome < mult
          largest_palindrome = mult
        end
      end
    end
    largest_palindrome
  end
end
