###GROCERY_LIST###

##Problem##
# write a method which takes a grocery list(ARRAY)
#   of fruits with quantities and converts it into
#   an ARRAY of the correct number of each fruit

##Pseudocode//Algo##
# Define method called 'buy_fruit' and takes ARRAY as argument
# create an empty array called 'list'

# on arr use .each do |subarray|
#   subarray[1].times do
#     list << subarray[0]


def buy_fruit(arr)
  list = []

  arr.each do |subarray|
    fruit, quantity = subarray[0], subarray[1]
    quantity.times {list << fruit}
  end
  list
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]