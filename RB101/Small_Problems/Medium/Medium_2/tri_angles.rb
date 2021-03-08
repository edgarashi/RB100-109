###TRI-ANGLE###

##Problem##
# triangle classified as follows:
#   right: one angle of triangle is a right angle(90 degrees)
#   acute: all 3 angles of the triangle are less than 90 degrees
#   obtuse: one angle is greater than 90 degrees

# to be a valid triangle, sum of the angles must be
# exactly 180 degrees, and all angles must be > 0
# **if either of these not satisfied, triangle is INVALID**

# write a method that takes the THREE ANGLES of a triangle
# as arguments, and returns a symbol
#   :right, :acute, :obtuse, or :invalid
# may assume integer valued angles so don't worry about
# floating point errors, may also assume arguments
# specified in degrees

##Pseudocode//Algo##
# Def method triangle
#   accepts 3 integers as arguments
# put integers into an array called "angles"

#   case statement
#   when angles.sum != 180
#     :invalid
#   when angles.include?(90)
#     :right
#   when angles.all? { |angle| angle < 90}
#     :acute
#   else
#     :obtuse

def triangle(side1, side2, side3)
  angles = [side1, side2, side3]

  case
  when angles.sum != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? { |angle| angle < 90}
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid