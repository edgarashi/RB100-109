#given method spin_me
#takes a string as an argument and returns a string
#that contains the same words, but wt word's
#characters reversed. given implementation,
#will the returned string be the same object
#as the one passed in as argument or a diff. object?

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

puts spin_me("hello world")

#same string i'd assume?
#Nope! different object