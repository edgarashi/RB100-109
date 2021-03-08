#what is block's return value in following code?
#also what is the return value of any?
#what does output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

#return value is 3? because odd
# and return of any is true because AT LEAST one of collection is not false or nil

#Wrong, atleast on overall return value, it was 1, is true though!
# -any? stops iterating after 1 since there is no need to evaluate the ramining items in the array
