###GET_MIDDLE_CHARACTER###

##Problem##
# write a method that takes NON-EMPTY STRING ARGUMENT
#   returns middle character or characters of argument
# if argument has odd length, return EXACTLY ONE CHARACTER
# if argument is even length, return EXACTLY TWO CHARACTERS

##Pseudocode//Algo##
# Create a method called center_of
#   pass in non-empty string as argument
#   if str.length.odd?
#     p str[(str.length/2)]
    # elsif str.length.even?
    #   str[(str.length/2) - 1] + str[(str.length/2)]

def center_of(str)
  if str.length.odd?
    str[(str.length/2)]
  elsif str.length.even?
    str[(str.length/2) - 1] + str[(str.length/2)]
  end
end






p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'