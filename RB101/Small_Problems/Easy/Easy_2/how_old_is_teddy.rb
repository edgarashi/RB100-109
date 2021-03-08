#Build a program that rando generates and prints Teddy's age
#To get the age you should get a random number btwn 20 and 200

####ALGO/PSEUDOCODE
  # use 'rand' method on (20..200) and save value as 'age'
  # use p to do "Teddy is #{age} years old"


def age_method
  age = rand(20..200)
  p "Teddy is #{age} years old"
end

age_method
