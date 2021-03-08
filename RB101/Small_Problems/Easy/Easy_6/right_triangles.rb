#write a method that takes a positive integer, n
#as an argument and displays a right traingle whose
#sides each have n stars. the hypotenuse of the traingle
#should have one end at the lower-left of the traingle
#and the other end at the upper right


# Examples:
# triangle(5)

#     *
#    **
#   ***
#  ****
# *****

# triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********


def triangle(num)
  stars =  1
  spaces = num - 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    stars += 1
    spaces -= 1
  end
end

puts triangle(5)
puts triangle(9)
