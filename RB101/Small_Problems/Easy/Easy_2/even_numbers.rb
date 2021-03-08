##Problem##
# print all even numbers from 1 to 99
# inclusive to console
# with each number on seperate line

##PSEUDOCODE/ALGO##
# create array (1..99) with .each method |x|
#   if x.even?
#     p x


(1..99).each do |x|
  if x.even?
    p x
  end
end
