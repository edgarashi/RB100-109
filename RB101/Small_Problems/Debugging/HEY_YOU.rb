###HEY YOU!###

#string#upcase! is a destructive method, so why print HEY instead of HEY YOU

def shout_out_to(name)
  name.upcase!
  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

#just removed the .each