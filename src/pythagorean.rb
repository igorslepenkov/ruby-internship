module Pythagorean
  def self.right_triangle?(a, b, c)
    sides = [a, b, c].sort{|i, j| j <=> i}
    hyp, first_leg, second_leg = sides
    first_leg.pow(2) + second_leg.pow(2) == hyp.pow(2)
  end

  def self.find_triplet_product_from(sum)
    (1..(sum / 3).floor).each do |a| 
      (a..(sum / 2).floor).each do |b|
        c = sum - a - b
        return a * b * c if self.right_triangle?(a, b, c)
      end
    end
  end
end
