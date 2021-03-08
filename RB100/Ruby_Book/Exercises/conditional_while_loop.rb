# conditional_while_loop.rb
# x += 1 counts up, program displays each odd until 10(x<=10)
x = 0 

while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end