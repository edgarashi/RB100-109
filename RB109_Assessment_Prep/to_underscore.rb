def to_underscore(string)
  return string.to_s if string.is_a? Numeric
  chars = string.chars
  result = []
  uppercase_alph = ('A'..'Z').to_a

  chars.each do |char|
    if result.empty?
      result << char
    elsif uppercase_alph.include?(char)
      result << '_' + char
    else
      result << char
    end
  end
  result.map! {|char| char.downcase}
  result.join
end

p to_underscore('MoviesAndBooks')

p to_underscore('TestController')

p to_underscore('App7Test')

p to_underscore(1)