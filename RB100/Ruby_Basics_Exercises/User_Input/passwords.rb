loop do
  1.times{puts "Please enter ur password; this is a secret"}
  password_try=gets.chomp.to_s
  if password_try != "SecreT"
    puts "try again bb"
  elsif password_try == "SecreT"
    puts "Welcome, dearest"
    break
  end
end
  
