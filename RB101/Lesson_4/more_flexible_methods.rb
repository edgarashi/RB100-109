def general_select(produce_list, selection_criteria)
  produce_keys = produce_list.keys
  counter = 0
  selected_produce = {}

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == selection_criteria
      selected_produce[current_key] = current_value
    end

    counter += 1
  end

  puts selected_produce
end

produce = {
  'apple' => 'fruit',
  'carrot' => 'vegetable',
  'pear' => 'fruit',
  'broccoli' => 'vegetable'
}

general_select(produce, 'fruit')
general_select(produce, 'vegetable')
general_select(produce, 'meat')