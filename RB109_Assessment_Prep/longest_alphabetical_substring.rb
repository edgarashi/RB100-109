=begin
Problem:
Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".

There are tests with strings up to 10 000 characters long so your code will need to be efficient.

The input will only consist of lowercase characters and will be at least one letter long.

If there are multiple solutions, return the one that appears first.

Data Structure:
input -> string
output -> string

Pseudocode/Algo
Okay haven't had a pseudocode, however ideas have not worked thus far
I was wrong! My substring method is returning subarrays that are needed
but how to file down to just ones in alphabetical order?
I think this is what I already tried but hell, new day
  Let's attempt to check, with conditionals, if string is
  equal to alphabetic order, i.e. each char is a higher index
  in alphabet array
  if yes pass to result
Once have all alphabetical strings in result, can then just find the longest one






=end

def substring(string)
  result = []

  0.upto(string.length) do |index1|
    index1.upto(string.length) do |index2|
      result << [string[index1..index2]]
    end
  end
  result
end

def alphabetical_order?(string)
  alphabet = ('a'..'z').to_a
  chars = string.chars
  result= []

  0.upto(string.length - 1) do |index|
    if result.empty?
      result << chars.shift
    elsif alphabet.index(string[index]) > alphabet.index(result.last)
      result << string[index]
    elsif string[index] == result.last
      result << string[index]
    end
  end
  result.join == string

end

def longest(s)
  result = []
  test_array = []
  alphabet = ('a'..'z').to_a
  substring = substring(s)
  substring.flatten!


  substring.each do |sub|
    if alphabetical_order?(sub)
      result << sub
    end
  end


  result.sort_by! do |sub|
    sub.length
  end

  result.delete_if {|sub| sub == ''}


  # result.each do |sub|
  #   if test_array.empty?
  #     test_array << sub
  #   elsif sub.size >= test_array.last.length
  #     test_array << sub
  #   end
  # end
  #  test_array



  max_length = result.last.length
  if result.all? {|sub| sub.length == max_length}
    result.first
  else
    result.last
  end
end



p longest('asd') #== 'as'
p longest('nab') #== 'ab'
p longest('abcdeapbcdef') #== 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') #== 'aaaabbbbctt'
p longest('asdfbyfgiklag') #== 'fgikl'
p longest('z') #== 'z'
p longest('zyba') #== 'z'