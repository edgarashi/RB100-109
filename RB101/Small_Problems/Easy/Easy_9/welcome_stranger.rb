###WELCOME_STRANGER###

##Problem##
# create a method that takes TWO arguments
#   an ARRAY and a HASH
#   array:
#     contain 2 or more elements that
#     when combined with adjoining spaces
#     produce a person's name
#   hash:
#     contain two keys ":title" and "occupation"
#     and appropriate values

#   method should return a greeting that uses
#   person's full name
#   and mentions person's title and occupation

##Pseudocode//Algo##
# Define method greetings that accepts:
#   an ARRAY containing person's name
#   and a HASH containing title and occupation
# write puts "Yo, #{array.join(' '')}. I see you're a #{hash[:title]} #{hash[:occupation]}

def prompt(message)
  p "=> #{message}"
end

def greetings(array, hash)
  prompt("Yo yo, Mr.#{array.join(' ')}")
  prompt("Nice to have a #{hash[:title]} #{hash[:occupation]} around.")
end






greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.