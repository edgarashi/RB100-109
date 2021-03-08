numbers = [5, 9, 21, 26, 39]

divisble_by_three= numbers.select {|a| a%3==0}
p divisble_by_three