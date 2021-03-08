# def select_fruit(hash)
#   puts hash.select {|k,v| v=='fruit'}
# end

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end

produce = {
  'apple' => 'fruit',
  'carrot' => 'vegetable',
  'pear' => 'fruit',
  'broccoli' => 'vegetable'
}

select_fruit(produce)
# puts produce