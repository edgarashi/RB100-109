###TRIANGLE_SIDES###

##Problem##
# Triangle classified as follows:
#   equilateral = all 3 sides equal
#   isosceles = 2 sides equal, 3rd is diff
#   scalene = all 3 sides are of diff length

# To be valid triangle:
#   sum of lengths of two shortest sides
#   must be greater than length of longest
#   all sides must have lengths > 0
#   if either not satisfied,
#     TRIANGLE IS INVALID

# write a method that takes length of 3 sides of triangle as
# arguments, and returns a symbol either
#     :equlateral, :isosceles, :scalene, or :invalid

##Pseudocode//Algo##
# Define method 'triangle' that accepts 3 integer arguments
#   create a check if a valid triangle
# Put sides into an array called "sides"
# create a 'largest_side' variable equal to arr.max

# use a case statement
#   when largest_side > sides.inject(*+), sides.include?(0)
#     :invalid
#   when side1 == side2 && side2 == side3
#     :equilateral
#   when side1 == side2 || side2 == side3 || side1 == side3
#     :isosceles
#   else
#     :scalene


def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side > sides.inject(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side2 == side3 || side1 == side3
    :isosceles
  else
    :scalene
  end
end





p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid