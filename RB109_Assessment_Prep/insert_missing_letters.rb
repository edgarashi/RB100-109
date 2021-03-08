=begin
Define a method that takes in a string and outputs the same string processed in a particular way.

The method should insert only after the first occurrence of each character of the input string, all the alphabet letters that:
-are NOT in the original string
-come after the letter you are processing

Each added letter should be in uppercase, the letters of the original string will always be in lowercase.

Example:

input: "holly"

missing letters: "a,b,c,d,e,f,g,i,j,k,m,n,p,q,r,s,t,u,v,w,x,z"

output: "hIJKMNPQRSTUVWXZoPQRSTUVWXZlMNPQRSTUVWXZlyZ"

You don't need to validate input, the input string will always contain a certain amount of lowercase letters.

PEDAC


### EXPLICIT
Input - String
* A lowercase string
Output - The Same String Returned
* Processed in a particular way

Rules:
  -


=end
ALPH = ('A'..'Z').to_a

def insert_missing_letters(str)
  if str.upcase.chars == ALPH
    return str
  end
  length = str.length - 1


  result = []
  str.chars.each do |char, index|
    if result.include?(char) == false && index != length && char != 'z'
      result << char
      result << (ALPH[ALPH.index(char.upcase) + 1]..ALPH.last).to_a.delete_if {|char| str.include?(char.downcase)}
    else
      result << char
    end
  end
  result.join
end




p insert_missing_letters("hello") == "hIJKMNPQRSTUVWXYZeFGIJKMNPQRSTUVWXYZlMNPQRSTUVWXYZloPQRSTUVWXYZ"

p insert_missing_letters("holly") == "hIJKMNPQRSTUVWXZoPQRSTUVWXZlMNPQRSTUVWXZlyZ"

p insert_missing_letters("odveo") == "oPQRSTUWXYZdFGHIJKLMNPQRSTUWXYZvWXYZeFGHIJKLMNPQRSTUWXYZo"

p insert_missing_letters("eyivrbkagbioavtbfdktmhdym") == "eJLNPQSUWXZyZiJLNPQSUWXZvWXZrSUWXZbCJLNPQSUWXZkLNPQSUWXZaCJLNPQSUWXZgJLNPQSUWXZbioPQSUWXZavtUWXZbfJLNPQSUWXZdJLNPQSUWXZktmNPQSUWXZhJLNPQSUWXZdym"

p insert_missing_letters("abcdefghijklmnopqrstuvwxyz") == "abcdefghijklmnopqrstuvwxyz"

p insert_missing_letters("pfdlagnbzeepkbiiqpudfthtii") == "pRSVWXYfJMORSVWXYdJMORSVWXYlMORSVWXYaCJMORSVWXYgJMORSVWXYnORSVWXYbCJMORSVWXYzeJMORSVWXYepkMORSVWXYbiJMORSVWXYiqRSVWXYpuVWXYdftVWXYhJMORSVWXYtii"

p insert_missing_letters("z") == "z"

p insert_missing_letters("vjxxwtjzxasuouzjrxoocfvjeywmvgeoyzz") == "vjKLNPQxxwtjzxaBDHIKLNPQsuoPQuzjrxoocDHIKLNPQfHIKLNPQvjeHIKLNPQywmNPQvgHIKLNPQeoyzz"