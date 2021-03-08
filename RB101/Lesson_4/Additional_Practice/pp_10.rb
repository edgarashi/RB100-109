munsters = {
  "Herman" => { "age" => 32, "gender" => "male"},
  "Lily" => { "age" => 30, "gender" => "female"},
  "Grandpa" => { "age" => 402, "gender" => "male"},
  "Eddie" => {"age" => 10, "gender" => "male"},
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

#modify the hash so that each member of munster family has
#an additional "age_group" key that has one of three values
#describing the age group the family member is in
#(kid, adult, or senior)

#note: a kid is 0-17, adult 18-64, senior is 65+

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end

p munsters


# munsters.each do |key, value|
#   if "age" <= 17
#     key<<