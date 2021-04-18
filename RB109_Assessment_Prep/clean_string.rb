#Given this string, each '#' marks a backspace on the previous letter. 'Clean' the string
#by removing every '#' and the letter preceding it.


def clean_string(str)
  result = []
  chars = str.chars
  chars.each do |char|
    if char == '#'
      result.pop
    else
      result << char
    end
  end
  result.join
end


p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""
p clean_string("#######") == ""
p clean_string("") == ""
