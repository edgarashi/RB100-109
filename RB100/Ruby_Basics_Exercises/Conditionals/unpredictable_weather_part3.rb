sun = ['visible', 'hidden'].sample

puts 'Sun is so bright' if sun == 'visible'
puts 'Clouds be blocking, bud!' unless sun == 'visible'