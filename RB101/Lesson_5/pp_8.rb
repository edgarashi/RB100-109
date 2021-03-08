#Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = 'aeiou'

hsh.each_pair do |key, value|
  value.each do |element|
    element.chars.each do |char|
      p char if vowels.include?(char)
    end
  end
end