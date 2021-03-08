##Problem##
# modify the method from previous exercise so it ignores
# non-alphabetic characters when determining whether
# it should uppercase or lowercase each letter

# non-alphabetic characters should still be included in the
# return value; they just don't count when toggling

##Pseudocode/Algo##
# Define a method called staggered caps
#   pass in a string
#   set a result value equal to empty string
#   set a boolean value need_upper to true
#   use .chars.each on string
#     if char =~ /[a-z]/i ---> the /i ignores case
#     else result += char

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'