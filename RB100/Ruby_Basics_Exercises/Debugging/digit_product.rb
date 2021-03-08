def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
    
  end

  product
end

p digit_product('12345')
#expected: 120
#actual: 0