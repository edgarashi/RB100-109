###WHATS WRONG WITH THE OUTPUT###

# want to print an ARRAY of numeric strings in reverse numerical order
# output is wrong

# **W/O REMOVING ANY CODE, HELP JOSH GET EXPECTED OUTPUT**

require 'pry'

arr = ["9", "8", "7", "10", "11"]
p(arr.sort do |x, y|
  y.to_i <=> x.to_i
end)


# Expected output: ["11", "10", "9", "8", "7"]
# Actual output: ["10", "11", "7", "8", "9"]