#given array

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

#turn this array into a hash where the names are keys and the values are the positions in the array!

flintstones_hash= Hash.new
value= []



flintstones.each do |x|
  value=flintstones.index(x)
  flintstones_hash.store(x, value)
end

puts flintstones_hash
