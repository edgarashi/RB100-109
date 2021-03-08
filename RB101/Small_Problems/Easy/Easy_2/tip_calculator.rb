###PROBLEM###
# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate.
# The program must compute the tip and then display both the tip and the total amount of the bill.

###PSEUDOCODE/ALGO###
# Prompt for a bill amount
#   bill_amount = gets.chomp.to_i
# Prompt for tip percentage
#   tip_percentage = gets.chomp.to_i
#   tip_decimal = (tip_percentage/100)
# Get tip amount
#   tip_amount = (bill_amount*tip_decimal)
# Get total
#   total = (bill_amount + tip_amount)

# Display using:
#   p "The tip is $" + "#{tip_amount.to_f.round(1)}"
#   p "The total is #" + "#{total.to_f.round(1)}"


p "What is the bill?"
bill_amount = gets.chomp.to_i

p "What is the tip percentage?"
tip_percentage = gets.chomp.to_f
tip_decimal = (tip_percentage/100)


tip_amount = (bill_amount * tip_decimal)
total = (bill_amount + tip_amount)

p "The tip is $" + "#{tip_amount}"
p "The total is $" + "#{total.to_f.round(1)}"
