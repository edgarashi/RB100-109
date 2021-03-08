pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = []
my_pets = pets[2..3]

# remove 'lizard' from 'my_pets', then print value of my_pets

my_pets.delete_at(1)

puts "I have a pet #{my_pets[0]}"