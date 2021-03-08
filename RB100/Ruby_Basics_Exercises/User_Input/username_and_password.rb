loop do
  1.times{puts "Username, bucko! Give me"}
  username_try=gets.chomp.to_s.downcase
  1.times{puts "Please enter password >:)"}
  password_try=gets.chomp.to_s
  if password_try != "SecreT"
    puts "Wrong Password"
  elsif password_try == "SecreT"
    break if username_try == 'admin'
  if username_try != 'admin'
    puts "Wrong Username"
  elsif username_try == 'admin'
    break if password_try == "SecreT"
  end
end
end

puts "Welcome, dearest"
  