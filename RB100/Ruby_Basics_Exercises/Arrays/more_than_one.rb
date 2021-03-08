pets = ['cat', 'dog', 'fish', 'lizard']

#write code selects 'fish' and 'lizard' form the pets array
#select two items at same time, assign return value
#to a variable named my_pets, then print contents
#my_pets as signle string
#make sure use my_pets to get words "fish" and "lizard" in msg
my_pets = []
my_pets = pets[2..3]

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}"
