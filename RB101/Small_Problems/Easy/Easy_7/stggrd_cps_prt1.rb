##Problem##
# write a method that takes a string as an argument,
# and returns a new string that containts the OG value
# using a staggered capitalization scheme in which
# every other character is capitalized, and the remaining
# characters are lowercase

# **CHARACTERS THAT ARE NOT LETTERS SHOULD NOT BE CHANGED
#   BUT RATHER COUNT AS CHARACTERS WHEN SWITCHIN BTWN
#     UPPER AND LOWERCASE

##PSEUDOCODE/ALGO##
# Define a method staggered_case and pass in string
#   define a variable 'result' as empty string
#   set a new value 'need_upper' as true
# use string.chars.each do |char|
# toggle need_upper from true to false or false to true
#   using need_upper = !need_upper

def staggered_case(string)
  result = ''
  need_upper = true
    string.chars.each do |char|
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
    need_upper = !need_upper
    end
  result
end



p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'