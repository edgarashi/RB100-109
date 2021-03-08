ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10}

#remove people with age 100 and greater
ages.delete_if {|key, value| value >= 100}

puts ages