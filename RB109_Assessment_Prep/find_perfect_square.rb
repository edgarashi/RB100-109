=begin
You might know some pretty large perfect squares. But what about the NEXT one?

Complete the findNextSquare method that finds the next integral perfect square after the one passed as a parameter.
**Recall that an integral perfect square is an integer n such that sqrt(n) is also an integer.**

If the parameter is itself not a perfect square then -1 should be returned. You may assume the parameter is positive.

Examples:

findNextSquare(121) --> returns 144
  Math.sqrt(121) == 11.0
findNextSquare(625) --> returns 676
  Math.sqrt(625) == 25.0
findNextSquare(114) --> returns -1 since 114 is not a perfect
  Math.sqrt(114) == 10.677.....
    NOT A PERFECT SQUARE

Data Structure:
input -> integer
output -> integer || -1 if sq is not a perfect square

Pseudocode//Algo
Create a method 'perfect_square?' that immedietely checks the input (sq) to see if it's a perfect square
  if it returns false, return -1
If it is a perfect square
  iterate up from sq
  checking each subsquent number for if it's a perfect square
    if found, break and return number



=end

def perfect_square?(num)
  sqrt = Math.sqrt(num)

  if sqrt.to_i != sqrt
    return false
  end
  true
end




def find_next_square(sq)
  if perfect_square?(sq) == false
    return -1
  end


  loop do
    sq += 1
    if perfect_square?(sq)
      return sq
    end
  end
end

p find_next_square(121) == 144
p find_next_square(625) == 676
p find_next_square(319225) == 320356
p find_next_square(15241383936) == 15241630849

p find_next_square(155) == -1
p find_next_square(342786627) == -1