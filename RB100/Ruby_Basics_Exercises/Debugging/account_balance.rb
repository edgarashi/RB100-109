# financially, u start with year wt a clean state

balance = 0

# what u earned and spent during first three months

january = {
  income: [1200, 75],
  expenses: [650, 140, 33.2, 100, 26.9, 78]
}

february = {
  income: [1200],
  expenses: [650, 140, 320, 46.7, 122.5]
}

march = {
  income: [1200, 10, 75],
  expenses: [650, 140, 350, 12, 59.9, 2.5]
}

#temporary replacements to test data
#output SHOULD be 800(500+100+200)
#january = { income: [500], expenses: []}
#february = { income: [100], expenses: []}
#march = { income: [200], expenses: []}
#did not add! just gave 200, the income of march


def calculate_balance(month)
  plus = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end 

[january, february, march].each do |month|
  balance += calculate_balance(month)
end

puts balance 

#the boys below are to test calculate_balance
#they work! so prob on lines 31-33
#puts calculate_balance({ income: [], expenses: []}) == 0
#puts calculate_balance({ income: [100], expenses: {}}) == 100
#puts calculate_balance({ income: [], expenses: [100]}) == -100
#puts calculate_balance({ income: [100], expenses: [50]}) ==50
#puts calculate_balance({ income: [4, 3], expenses: [2, 1]}) == 4