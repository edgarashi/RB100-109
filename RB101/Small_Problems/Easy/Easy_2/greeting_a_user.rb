#write a program that will ask for user's name
#program will then greet the user
#if the user writes "name!" then the computer yells
#back to the user


##PSEUDOCODE/ALGO##
# puts a string asking for users name
#   save that as "name" with gets.chomp
#
#   if string.include?("!")
#     p "HELLO #{name.upcase!}. WHY ARE WE SCREAMING?"
#   else
#     p "Hello #{name}"


p "What is your name?"
name = gets.chomp

if name.include?("!")
  p "HELLO #{name.upcase!} WHY ARE WE YELLING?"
else
  p "Hello #{name}"
end
