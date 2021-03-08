[1, 2, 3].reject do |num|
  puts num
end

#guess: nothing? because returns items in 'self' for which the given block is not true
#no? returns all of them?
# -puts always returns nil, which is 'falsey'
# -if the return value was false or nil the element would be selected