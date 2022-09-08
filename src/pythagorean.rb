module Pythagorean
  def self.find_triplet_product_from(sum)
    a = (sum / 2)-1
    b = 1
    until b == (sum / 2)-1
      puts a
      puts b
      c = Math.sqrt(a.pow(2) + b.pow(2))
      if a + b + c == sum
      elsif a + b + c > sum
        a -= 1 
      elsif a + b + c < sum
        b += 1
      end
    end
    a*b*c
  end
end

