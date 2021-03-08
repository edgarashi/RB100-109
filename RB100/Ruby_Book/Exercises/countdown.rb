# countdown.rb

puts "gimme a number i'm itchin' to countdown"

x = gets.chomp.to_i

until x <= 0
  puts x
  x -= 1
end

puts "done mofo!"