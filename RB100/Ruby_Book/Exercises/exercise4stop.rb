#Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.
puts "GIMME SOMN"
answer=gets.chomp

while answer != 'STOP!' do
  puts "what up hot dad?"
  answer=gets.chomp  
  puts "try again, maybe try STOP!"
    answer=gets.chomp
   if answer=="STOP!" 
  break
   end
end