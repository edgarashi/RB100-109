flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#amend array so that the names are all shortened to just the first three characters
flintstones.map! do |name|
  name[0, 3]
end

puts flintstones
