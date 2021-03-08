###STACK_MACHIEN_INTERPRETATION###

##Problem##
# stack is a list of values that grows and shrinks dynamically

# stack-and-register programming language is a language that
# uses a stack of values
# each operation in the language operates on a **REGISTER**(current value)
# register is not part of the stack
# operations that require two values pop the topmost item from the stack
#   (that is, operation removes most recently pushed
#   value from the stack)
# perform the operation using the popped value and the register value
# then store result back in register

##Pseudocode//Algo##
# define method 'minilag' that takes 'program' as argument
#   create an empty array called stack
#   create a variable called 'register' equal to 0

# use .split.each on method argument 'token'
#   start a case statement for |token|
#   when 'ADD' then register += stack.pop
#   when 'DIV' then register /= stack.pop
#   when 'MULT' then register *= stack.pop
#   when 'MOD' then register %= stack.pop
#   when 'SUB' then register -= stack.pop
#   when 'PUSH' then stack.push(register)
#   when 'POP' then register = stack.pop
#   when 'PRINT' then puts register
#   else          register = token.to_i
#   end

def minilang(program)
  stack = []
  register = 0
  program.split.each do |token|
    case token
    when 'ADD' then register += stack.pop
    when 'DIV' then register /= stack.pop
    when 'MULT' then register *= stack.pop
    when 'MOD' then register %= stack.pop
    when 'SUB' then register -= stack.pop
    when 'PUSH' then stack.push(register)
    when 'POP' then register = stack.pop
    when 'PRINT' then puts register
    else              register = token.to_i
    end
  end
end





p minilang('PRINT')
# 0

p minilang('5 PUSH 3 MULT PRINT')
# 15

p minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

p minilang('5 PUSH POP PRINT')
# 5

p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

p minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

p minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

p minilang('-3 PUSH 5 SUB PRINT')
# 8

p minilang('6 PUSH')
# (nothing printed; no PRINT commands)