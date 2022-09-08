module SmallestMultiple
  def self.is_dev_by_every(number, arr)
    !arr.any? {|num| number % num != 0}
  end

  def self.get_smallest_multiple_for(max_number_in_range)
    range_arr = (1..max_number_in_range).reduce([]) {|arr, num| arr.push(num)}
    max_possible_cm = range_arr.reduce(:*)
    multiple = max_number_in_range
    (1..max_possible_cm).each do |i|
      multiple = max_number_in_range * i
      break if self.is_dev_by_every(multiple, range_arr)
    end
    multiple
  end
end
