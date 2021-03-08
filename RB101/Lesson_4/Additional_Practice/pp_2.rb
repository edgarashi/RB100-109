ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

#add up all of the ages from the munster family hash

total_ages = 0
ages.each { |_, age| total_ages += age}
puts total_ages

#OR
#ages.values.inject(:+)
