flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#find the index of first name that starts with "Be"

# puts flintstones.index {|x| x.start_with?("be")==true}

# flintstones.each_with_index do |item, index|
#   if item.start_with?("Be")==true
#     puts index
#   end
# end

puts flintstones.index {|name| name[0,2] == "Be"}