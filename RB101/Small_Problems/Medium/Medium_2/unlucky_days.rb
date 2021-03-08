###UNLUCKY_DAYS###

##Problem##
# write a method that returns the number of friday the 13th
# in the year given by an argument

# may assume that year > 1752
# will remain in use for foreseeable future

##Pseudocode//Algo##
# require 'date' at top
# Define a method 'friday_13th' that accepts an integer('year')
# set counter('unlucky count') to 0
# set variable 'thirteenth' to
#   (year, 1, 13)
# 12.times look if thirteenth.friday?
# thirteenth = thirteenth.next_month

require 'date'

def friday_13th(year)
  unlucky_count = 0
  thirteenth = Date.new(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end



p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2