#write method searches for multiples 3 or 5
#that lie btwn 1 and some other number, and then computes
#the sum of those multiples

#for instance if supplied number is 20
#result should be 98
#   (3+5+6+9+10+12+15+18+20)

#may assume number passed in is an integer greater than 1


def multisum(integer)
  sum = 0
  dummy_array = (1..integer).to_a
  dummy_array.map do |x|
    if x % 3 == 0 || x % 5 == 0
     sum += x
    end
  end
  sum
end




#Examples:
puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
