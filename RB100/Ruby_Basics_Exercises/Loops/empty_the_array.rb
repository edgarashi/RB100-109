#use loop to remove and print each name
#stop loop once names doesn't contain any more elements
#ONLY use loop

names = ['Sally','Joe','Lisa','Henry']

loop do 
  puts names.last
  names.pop
  break if names==[]
end
