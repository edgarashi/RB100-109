#given this hash print out the name, age and gender of each family member:
#like this:
# (Name) is a (age)-year-old (male or female).

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# name = ''
# age = ''
# gender = ''
# munsters.each do |key, value|
#   counter = 0
#   loop do
#     name = key
#     age = value["age"]
#     gender = value["gender"]
#     puts "#{name} is a #{age}-year-old #{gender}"
#     counter += 1
#     break if counter == munsters.length - 4
#   end
# end

munsters.each_pair do |x, y|
  p "#{x} is a #{y["age"]}-year-old #{y["gender"]}"
end


# puts "#{name} is a #{age}-year-old #{gender}"