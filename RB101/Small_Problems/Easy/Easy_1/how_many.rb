#method that counts the number of occurrences of each element
#in a given array

###PSEUDOCODE/ALGO###
# Lets use each_with_object
#   and initialize a new hash
#     add 1 to value for each repetition of key

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck',
]

def count_occurences(x)
  x.each_with_object(Hash.new(0)) {|vehicle, hash| hash[vehicle] += 1}
end

p count_occurences(vehicles)