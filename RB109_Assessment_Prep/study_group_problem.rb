=begin
Given three arrays of integers, return the sum of elements that are common in each
=end

def common(a,b,c)
  a.select do |elem|
    b.include?(elem) && c.include?(elem)
  end.sum
end


puts common([1,2,3],[5,3,2],[7,3,2]) == 5
puts common([1,2,2,3],[5,3,2,2],[7,3,2,2]) == 7