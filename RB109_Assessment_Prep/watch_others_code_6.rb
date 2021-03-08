# Given 2 strings, your job is to find out if there is a substring
# that appears in both strings. You will return true if you find a
# substring that appears in both strings, or false if you do not.
# We only care about substrings that are longer than one letter long.

##Problem##
# Given 2 strings -> find if substring appears in BOTH
#   if yes, true
#   if no, false

#Data Structure#
# input -> two strings, a and b
# output -> boolean(true or false)

# Pseudocode/Algo
# Get all available substrings of both words
#   (could be a seperate method)
# Delete all substrings whose length <= 1
# Lowercase and sort all substrings
# Compare two list of substrings to find any same occurences

def substring(string)
  result_string = []

  0.upto(string.length - 1) do |index1|
    index1.upto(string.length - 1) do |index2|
      result_string << string[index1..index2]


    end
  end

  result_string.sort!
  result_string.delete_if {|subarray| subarray.length <= 1}
end

def substring_test(str1, str2)
  substring1 = substring(str1)
  substring2 = substring(str2)

  substring2.each do |subarray2|
    substring1.any? do |subarray1|
      if subarray1.downcase == subarray2.downcase
        return true
      end
    end
  end
  false
end


p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something', 'Fun') == false
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true