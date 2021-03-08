

def insert_dash(int)
  result_array = []
  int_chars = int.to_s.chars
  0.upto(int_chars.length - 1) do |index|
    if int_chars[index].to_i.odd? && #if character is odd
       int_chars[index + 1].to_i.odd? && #if next character is odd


      result_array << int_chars[index] &&
      result_array << '-'
    else
      result_array << int_chars[index]
    end
  end
  if result_array[-1] == '-'
    result_array.pop
  end
  result_array.join
end

p insert_dash(454793) == '4547-9-3'
p insert_dash(123456) == '123456'
p insert_dash(1003567) == '1003-567'
p insert_dash(24680) == '24680'
p insert_dash(13579) == '1-3-5-7-9'
p insert_dash(357158305401) == 3-5-7-1-58305401
