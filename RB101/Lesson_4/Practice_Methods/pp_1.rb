#what is the return value of the select method below?why?
[1, 2, 3].select do |num|
  num > 5
  'hi'
end

#guess: 'hi'
#select performs selection based on truthiness of block's return value
#   -in this case return value will always be 'hi', which is a "truthy" value
#   -therefore will return a new array containing all of the elements in the original array
