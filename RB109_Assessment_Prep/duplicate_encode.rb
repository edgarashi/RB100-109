def duplicate_encode(str)
  chars = str.downcase.chars
  result = ''

  chars.each do |char|
    if chars.count(char) > 1
      result << ')'
    else
      result << '('
    end
  end
  result
end

p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("