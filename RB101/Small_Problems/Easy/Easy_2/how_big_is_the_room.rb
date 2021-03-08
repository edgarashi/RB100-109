#Build a program that asks a user for the lenght and
#width
#of a room in meters and then displays the area of the
#room in both meters and square feet

#NOTE: 1 square meter == 10.7639 square feet
#Do not worry about validating input


###PSEUDOCODE/ALGO###
# Prompt user to provide length of room in meters
#   save this answer using gets.chomp.to_i (length)
# Prompt user to provide width of room in meters
#   save this answer using gets.chomp.to_i (width)

# Then save the area of the room in square meters as
#   (length * width) = square_meters_area
# Then save the area of the room in square feet as
#   (square_meters_area * 10.7639) = square_feet_area

# Finally p
# "The area of the room is #{square_meters_area} square meters (#{square_feet_area} square feet)"


p "Enter length of room in meters:"
length = gets.chomp.to_i

p "Enter width of room in meters:"
width = gets.chomp.to_i

square_meters_area = (length * width)
square_feet_area = (square_meters_area * 10.7639).round(2)

p "The area of the room is #{square_meters_area} square meters (#{square_feet_area} square feet)."
