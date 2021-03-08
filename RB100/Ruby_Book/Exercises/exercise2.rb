# only print values over 5

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each do |x|
  if x>5 
    p x
  end
end