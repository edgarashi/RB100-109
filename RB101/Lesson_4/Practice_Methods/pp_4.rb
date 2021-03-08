['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

#guess: 'ant'? because the index is 0, and is equal to value
#No! Actually creates a hash!
# -{"a"=>"ant", "b"=>"bear", "c"=>"cat"}
# -grabs first letter with the 0 index
