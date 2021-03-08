###MATCHING_PARENTHESES###

##Problem##
# write a method that takes a STRING as an argument
# and returns TRUE if all parentheses in string
# are properly balanced
# FALSE otherwise

# **TO BE PROPERLY BALANCED PARENTHESES MUST OCCUR IN MATCHING
# '(' AND ')' PAIRS**

##Pseudocode//Algo##
# Def a method balanced?
#   takes string argument
# True statement:
#   all parentheses CLOSE
#   if there's a '(' then must be a ')'
# False:
#   if parentheses DON'T CLOSE
# Create a counter called 'parentheses' equal to zero
#   add to it if '('
#   subtract if ')'
#   break if counter becomes less than 0
# Use .zero? method on 'parentheses' to get return boolean




def balanced?(string)
  parentheses = 0
  string.each_char do |char|
    parentheses += 1 if char == '('
    parentheses -= 1 if char == ')'
    break if parentheses < 0
  end

  parentheses.zero?
end





p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false