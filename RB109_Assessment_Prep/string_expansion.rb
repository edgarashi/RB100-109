=begin
Given a string that includes alphanumeric characters ('3a4B2d') return the expansion of that string: The numeric values represent the occurrence of each letter preceding that numeric value. There should be no numeric characters in the final string. Empty strings should return an empty string.

The first occurrence of a numeric value should be the number of times each character behind it is repeated, until the next numeric value appears.

string_expansion('3D2a5d2f') == 'DDDaadddddff'

string_expansion('3abc') == 'aaabbbccc'       # correct
string_expansion('3abc') != 'aaabc'           # wrong
string_expansion('3abc') != 'abcabcabc'       # wrong

If there are two consecutive numeric characters the first one is ignored.

string_expansion('3d332f2a') == 'dddffaa'

If there are two consecutive alphabetic characters then the first character has no effect on the one after it.

string_expansion('abcde') == 'abcde'

Your code should be able to work for both lower and capital case letters.

string_expansion('') == ''
-----------------------INSTRUCTIONS--------------------------------------
Given a string that includes alphanumeric characters ('3a4B2d') return the expansion of that string: The numeric values represent the occurrence of each letter preceding that numeric value. There should be no numeric characters in the final string. Empty strings should return an empty string.

The first occurrence of a numeric value should be the number of times each character behind it is repeated, until the next numeric value appears.
--------------------------PROBLEM----------------------------------------

Questions:

Input: string

Output: string (numbers removed/each letter put in the amount of times of last character)

---------------------------RULES-----------------------------------------
Explicit: if hit a number
              -> next characters added that many times to new string
              -> numbers not added

Implicit:

--------------------------EXAMPLES---------------------------------------
p string_expansion('3abc') == 'aaabbbccc'
3.times {'a'}
3.times {'b'}
3.times {'c'}


p string_expansion('3D2a5d2f') == 'DDDaadddddff'
3.times {'D'}
2.times {'a'}
5.times {'d'}
2.times {'f'}

p string_expansion('0d0a0v0t0y') == ''


p string_expansion('3d332f2a') == 'dddffaa'


p string_expansion('abcde') == 'abcde'
no number string just returned


p string_expansion('') == ''


----------------------------ALGO----------------------------------------
Goals:
  iterate thru string as characters
    if hit a number save it as a variable
      -> only save if the following character after the number is an alphabetical character
        -> or vice versa

make alphabet array for validation
have 'return_string' (empty) to build output string
set an 'iterator' variable to 1 (can use for iteration, if no number found will just add a character 1 time)
set variable 'chars' equal to characters of string

  iterate thru characters
    if alphabet array does NOT include char
      set iterator equal to character converted to integer
    otherwise
     pass character to 'return_string' 'iterator' amount of times

return 'return_string'
=end


ALPH = ('a'..'z').to_a

def string_expansion(str)
  return_string = ''
  chars = str.chars
  iterator = 1

  chars.each do |char|
    if !ALPH.include?(char.downcase)
      iterator = char.to_i
    else
      iterator.times {return_string << char}
    end
  end
  return_string
end




p string_expansion('3abc') == 'aaabbbccc'
p string_expansion('3D2a5d2f') == 'DDDaadddddff'
p string_expansion('0d0a0v0t0y') == ''
p string_expansion('3d332f2a') == 'dddffaa'
p string_expansion('abcde') == 'abcde'
p string_expansion('') == ''