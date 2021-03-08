###NAME_SWAPPING###

##Problem##
# write a method that takes a FIRST NAME, A SPACE, and
# A LAST NAME passed as a single STRING argument
#   and returns A STRING that contains:
#     last name, comma, space, first name

##Pseudocode//Algo##
# Define method called swap_name
#   pass in a STRING argument
#     represents a name
#   use .split(' ') on string equal to name_array
#   last_name = name_array[-1]
#   first_name = arr.first


def swap_name(string)
  name_array = string.split(' ')
  name_array
  last_name = name_array[-1]
  first_name = name_array.first
  "#{last_name}, #{first_name}"
end



p swap_name('Joe Roberts') == 'Roberts, Joe'