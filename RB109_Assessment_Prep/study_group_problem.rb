=begin
Given three arrays of integers, return the sum of elements that are common in each
=end

def common(a,b,c)
  sum_arr = []

  a.each do |elem|
    if b.include?(elem) && c.include?(elem)
      sum_arr << elem
    end
  end
  sum_arr.sum


end

# because 2 & 3 are common in all 3 arrays
puts common([1,2,3],[5,3,2],[7,3,2]) == 5

# because 2,2 & 3 are common in the 3 arrays
puts common([1,2,2,3],[5,3,2,2],[7,3,2,2]) == 7