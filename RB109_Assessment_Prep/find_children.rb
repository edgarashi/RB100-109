=begin
Mothers arranged a dance party for the children in school. At that party, there are only mothers and their children. All are having great fun on the dance floor when suddenly all the lights went out. It’s a dark night and no one can see each other. But you were flying nearby and you can see in the dark and have ability to teleport people anywhere you want.
Legend:
-Uppercase letters stands for mothers, lowercase stand for their children, i.e. “A” mother’s children are “aaaa”.
-Function input: String contains only letters, uppercase letters are unique.
Task:
Place all people in alphabetical order where Mothers are followed by their children, i.e. “aAbaBb” => “AaaBbb”.
=end

ALPHA = ('a'..'z').to_a

def find_children(str)
  result = ''
  lowercase = []
  uppercase = []
  chars = str.chars
  chars.each do |char|
    if ALPHA.include?(char)
      lowercase << char
    else
      uppercase << char
    end
  end
  uppercase.sort!
  uppercase.each do |upper|
    result << upper
    if lowercase.include?(result[-1].downcase)
      lowercase.count(upper.downcase).times {result << upper.downcase}
    end
  end
  result



end

def find_children(str)
  chars = str.downcase.chars.sort
  result = ''

  chars.each do |char|
    if result.empty?
      result << char.capitalize!
    elsif char != result[-1].downcase
      result << char.capitalize!
    else
      result << char
    end
  end
  result

end




p find_children("abBA") #== "AaBb"
p find_children("AaaaaZazzz") #== "AaaaaaZzzz"
# p find_children("CbcBcbaA") == "AaBbbCcc"
# p find_children("xXfuUuuF") == "FfUuuuXx"
# p find_children("") == ""