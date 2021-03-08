
def every_second_character(word)
  result = word.chars.each_with_index do |char, index|
    if (index + 1) % 2 == 0
        char[index] = char[index].upcase
    end
  end
  result
end



def to_weird_case(str)
  words = str.split
  result = []
  words.each_with_index do |word, index1|
    if (index1 + 1) % 3 == 0
      result << every_second_character(word)
    else
      result << word
    end
  end
  result.join(' ')
end


# Examples:

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case('It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'