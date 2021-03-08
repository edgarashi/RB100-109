# use select method to extract all odd numbers into a new array

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array=[]

array.select do |x|
  if x%2 !=0
    new_array << x
  end
end

p new_array