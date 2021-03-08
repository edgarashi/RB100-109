def is_an_ip_number?(input)
  input.to_i <= 255
end

def dot_seperated_ip_address?(input_string)
  dot_seperated_words = input_string.split(".")
  return false unless dot_seperated_words.size == 4

  while dot_seperated_words.size > 0 do
    word = dot_seperated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

dot_seperated_ip_address?("4.5.5")
dot_seperated_ip_address?("1.2.3.4.5")
dot_seperated_ip_address?("10.4.5.11")
