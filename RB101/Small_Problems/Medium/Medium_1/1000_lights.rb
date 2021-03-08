###1000 LIGHTS###

##Problem##
# write a method that takes one argument, TOTAL NUMB OF SWITCHES
# and returns an ARRAY that identifies which lights are on
# after n repetitions

# example with n = 5lights:
# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

# result is that 2 lights left on, lights 1 and 4
#   return value is [1, 4]

##Pseudocode//Algo##
# Initialize a method 'initalize_lights'
#   accepts argument (number_of_lights)
#   this will make lights hash

#   set variable lights equal to Hash.new
#   1.upto(number_of_lights) { |number| lights[number] = "off"}
#   return lights

# Initialize method 'on_lights' that takes arguement (lights)
#   lights.select { |_position, state| state == 'on'}.keys

# Initialize method 'toggle_every_nth_light'
#   accepts arguement (lights, nth)
#   lights.each do |position, state|
#     if position % nth == 0
#       lights[position] = (state == 'off') ? "on" : "off"


# Initalize method 'toggle_lights'
#   takes argument (number_of_lights)
#   lights variable equals initialize_lights(number_of_lights)
#   1.upto(lights.size) do |iteration_number|
#     toggle_every_nth_light(lights, iteration_number)

#   return on_lights(lights)

def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = 'off'}
  lights
end

def on_lights(lights)
  lights.select { |position, state| state == 'on'}.keys
end

def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == 'off') ? "on" : "off"
    end
  end
end

def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end



p toggle_lights(1000)