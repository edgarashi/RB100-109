=begin
##Problem##
convert dash/underscore into camel case
  i.e. if follow a '-' or a '_' then next char is capitalized
##Data Structure##
input:string
output:new string
##Pseudocode/Algo##
Divide str into characters in an array called str_chars
Iterate upto the length of str_chars
  if the previous index is equal to '-' or '_'
  then index is capitalized
After iteration delete '-' and '_' characters
Join and return


=end
def to_camel_case(str)
  str_chars = str.chars
  0.upto(str_chars.length - 1) do |index|
    if str_chars[index - 1] == '-' || str_chars[index - 1] == '_'
      str_chars[index].upcase!
    end
  end
  str_chars.delete_if {|char| char == '-' || char == '_'}
  str_chars.join
end

p to_camel_case("the_stealth_warrior") ==  "theStealthWarrior"