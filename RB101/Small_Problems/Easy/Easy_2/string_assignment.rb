#what does this code print out?
# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name

#my guess: Alice, Bob

#what does THIS code print out?
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

#my guess: BOB, Bob
#NO. It is BOB, BOB
# -upcase! mutates string in both