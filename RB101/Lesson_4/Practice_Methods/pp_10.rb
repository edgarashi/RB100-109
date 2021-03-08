[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

#what is the return value of following code? why?
# so, as we know, .map returns a new array for what evals true to block
# here would it be just 1? or the whole array?
# reason i say just 1 is because I THINK i remember that 'puts' returns nil, so by that logic only 1 would make it through
# but disregarding this i'd assume the whole array would make it thru
# i'm gonna make final guess be [1, nil, nil] because I feel that makes the most sense here, let's see

#FUCK YEAH I WAS RIGHT! Imrpovement for this trashcan. Much love
