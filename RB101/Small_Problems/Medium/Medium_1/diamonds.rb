###DIAMONDS###

##Problem##
# write a method that displays a 4-pointed diamond
# in an n x n grid, where n is an odd integer
# that is supplied as an argument to the method
# **may assume that the argument will always be an odd
# integer**

##Pseudocode//Algo##
# Define a method 'print_row' that takes arguments
#   'grid_size' and 'distance_from_center'
#   create a variable 'number_of_stars' equal to
#     grid_size - 2 * distance_from_center
#     stars = '*' * number_of_stars
#     puts stars.center(grid_size)

# Define a method 'diamond' that takes integer argument(grid_size)
#   create a variable 'max_distance' equal to (grid_size-1)/2
#   max_distance.downto(0)
#     {|distance| print_row(grid_size, distance)}
#   1.upto(max_distance)
#     {|distance| print_row(grid_size, distance)}

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - (2 * distance_from_center)
  stars = '*' * number_of_stars
  puts stars.center(9)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) {|distance| print_row(grid_size, distance)}
  1.upto(max_distance) { |distance| print_row(grid_size, distance)}
end

# diamond(1)
# diamond(3)
diamond(9)
