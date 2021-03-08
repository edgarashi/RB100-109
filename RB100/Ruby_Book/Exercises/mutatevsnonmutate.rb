# this example program illustrates difference between a method that mutates, and one that does not

def mutate(arr)
  arr.pop
end

def non_mutate(arr)
  arr.select {|x| x>3}
end

poopie = [1, 2, 3, 4, 5, 6, 6, 6]

mutate(poopie)
non_mutate(poopie)

puts poopie
