###DOUBLE_DOUBLES###

##Problem##
# a double number is a NUMBER with an EVEN number of digits
# whose LEFT-SIDE digits are exactly same as it's RIGHT-SIDE
#   ex. 44, 3333, 103103, 7676

# write a method that returns 2 times the number provided as an argument
#   UNLESS argument is a double number;
#     **DOUBLE NUMBERS RETURNED AS IS**


##Pseudocode//Algo##
# Define method 'twice' with integer as argument
#   create variable string_number set equal to intg.to_s
#   create 'center' variable equal to string_number.size/2
#   create variable 'left_side'
#     equal to center.zero? ? '' : string_number[0..center - 1]
#   create variable 'right_side'
#     equal to string_number[center..- 1]

#   return intg if left_side == right_side
#   return number * 2

def twice(intg)
  string_number = intg.to_s
  center = string_number.size/2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return intg if left_side == right_side
  return intg * 2
end




p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10