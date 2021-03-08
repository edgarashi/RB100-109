#write a method named include? that takes an array and
# a search value as arguments. The method shopuld return
#true if search value is in the array, false if not
#may not use the Array#include? method

# Examples:
# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

def include?(array, integer)
  loop do
    array.map do |element|
      if element==integer
        return true
        break
      end
    end
    return false
  end
end



puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
