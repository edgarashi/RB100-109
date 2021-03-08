#Build a program that displays when the user will retire
#and how many years she has to work till retiremenet

###PSEUDOCODE/ALGO###
# Ask user for age
# age = gets.chomp.to_i
# Ask user what age they would like to retire
# retirement_age = gets.chomp.to_i

# get current time
# t = Time.new
# current_year = t.year

# time_to_go = retirement_age - age
# year_retire = (time_to_go + current_year)

p "What is you're age?"
age = gets.chomp.to_i

p "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

t = Time.new
current_year = t.year

time_to_go = (retirement_age - age)
year_retire = (time_to_go + current_year)

p "It's #{current_year}." + " " + "You will retire in #{year_retire}"
p "You have only #{time_to_go} years of work to go!"