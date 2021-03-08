{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

#what is the return value of map in following code? why?
# 'bear', i'd assume since it has 4 characters(4>3)
# pretty damn close! it's [nil, "bear"]
# -according to docs .map returns a NEW ARRAY
# -not just whtvr string made it thru the block
# -i'm confused about the nil return though
# okkkk, block evalutes to true when the length of value > 3
#   -here the only value of 3 is 'bear,' so for first element  'ant' condition evals false and value isn't returned
#   -when no conditions in an if statement evals as true, if statement returns nil
#   - THAT's why we see nil as the first element in the returned array
