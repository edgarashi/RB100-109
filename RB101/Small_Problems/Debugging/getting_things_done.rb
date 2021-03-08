###GETTING THINGS DONE###

# wrote a method for moving a given number of elements from one array
# to another, decide to test it on our todo list, but
# invoking move on line 11 results in a SystemStackError

# *What does error mean and why does it happen?*

def move(n, from_array, to_array) #method definition, takes three arguments
  #n is supposed to be number of elements removed I believe
  to_array << from_array.shift##to_array has elements added with shovel operator
  #.shift removes the first element
  move(n - 1, from_array, to_array) unless from_array.length == 1
  #making n == 0 removed ALL elements
  #would of worked if 'return if n == 0 at BEGINNING of method
end
#recursive method is taking place here, let's break it down

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']