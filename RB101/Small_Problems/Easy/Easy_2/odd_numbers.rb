##Problem##
# print all odd numbers from 1 to 99, inclusive to the console
# with each number on a seperate line

##PSEUDOCODE/ALGO##
# use .each on array that is (1..99)
#   p if |x|.odd?

(1..99).each do |x|
  if x.odd?
    p x
  end
end