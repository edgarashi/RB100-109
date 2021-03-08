# inline_exception_example.rb

zero = 0
puts "before each call"
zero.each {|element| puts element} rescue puts "can't do that"
puts "after each call"