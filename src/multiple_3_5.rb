# def find_sum_of_multiples(num, last_num_in_range)
#   sum = 0;
#   multiple = ((last_num_in_range - 1) / num).floor * num
#   while multiple >= num 
#     next if multiple % num != 0
#     puts multiple
#     sum += multiple
#     multiple -= num
#   end

#   return sum
# end

# def find_sum_of_sums
#   mult_of_5_sum = find_sum_of_multiples(5, 1000)
#   mult_of_3_sum = find_sum_of_multiples(3, 1000)
#   return mult_of_5_sum + mult_of_3_sum
# end

def find_sum_loop
  sum = 0
  1000.times do |x|
    sum += x if (x % 3 == 0) || (x % 5 == 0)
  end
  return sum
end

puts find_sum_loop()