###END_NEAR_NOT_HERE###

##Problem##
# write a method that returns NEXT TO LAST word in string
#   words are any sequence of non-blank characters

#   **MAY ASSUME INPUT STRING WILL ALWAYS CONTAIN ATLEAST 2 WORDS**


##Pseudocode//Algo##
# Define a method called 'penultimate'
#   pass in string
#   set array = string.split
#   set a variable length = array.length
#   set a variable 'result' equal to
#     array[length-2]

def penultimate(string)
  array = string.split
  length = array.length
  result = array[length-2]
  result
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
