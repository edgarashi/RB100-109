a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

# turn it into a new array that consists of strings containing one word. 
# (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, 
# as well as String's split method.


arry = a.map! do |string|
     string + " "
     string.split
end

arry.flatten!
p arry

