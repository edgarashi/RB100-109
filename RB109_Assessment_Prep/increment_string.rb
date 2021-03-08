# Your job is to write a function which increments a string, to create a new string.

#     If the string already ends with a number, the number should be incremented by 1.
#     If the string does not end with a number. the number 1 should be appended to the new string.

# Examples:

# foo -> foo1

# foobar23 -> foobar24

# foo0042 -> foo0043

# foo9 -> foo10

# foo099 -> foo100
=begin
-----------------------INSTRUCTIONS--------------------------------------
# Your job is to write a function which increments a string, to create a new string.

#     If the string already ends with a number, the number should be incremented by 1.
#     If the string does not end with a number. the number 1 should be appended to the new string.
--------------------------PROBLEM----------------------------------------

Questions:

Input: string

Output: new string (wt 1 appended if no number at end || if there is a number at end,                       incremented by 1)

---------------------------RULES-----------------------------------------
Explicit: string ends with a number, number += 1
          string ends with no number, 1 is added to string

Implicit: zeroes at end of string -> if integer at end after incrementing has another
          digit, than a zero needs to be deleted
          incrementing a STRING integer
          if no string, it just equals 1

--------------------------EXAMPLES---------------------------------------
p increment_string("foo") == "foo1"

"foo" no number at end, so -> "foo1"

p increment_string("foobar001") == "foobar002"
"foobar001"  -> "1" + 1 = 2 -> "foobar002"

p increment_string("foobar1") == "foobar2"
"foobar1" -> "1" + 1 = 2 -> "foobar2"


p increment_string("foobar00") == "foobar01"
"foobar00" -> "0" + 1 -> "foobar01"
p increment_string("foobar99") == "foobar100"
"foobar99" -> "99" + 1 -> "foobar100"

p increment_string("") == "1"
"" -> "0" + 1 -> "1"

p increment_string("foo099") == "foo100"
"foo099" -> "099" + 1 -> "foo100"

p increment_string("f00bar") == "f00bar1"
"f00bar" -> 0 + 1 -> f00bar1



----------------------------ALGO----------------------------------------
Goals)
if there is no string integer at end of string, 1 is appended
isolate string integer at the end of the string
  -> incremement by 1
if string is empty, it just equals 1


String argument
  create a way to validate string integer
  need to seperate alphabetical characters from the string integer at the end
  or isolate string integer at end
  increment string integer
  append it back to the string

increment_string (str)
  create string integer array
  iterate through the string
    in iteration, if string integer (not zero) is found
    add to an array
    increment integer
    add back


def increment_string(str)
  integer_arr = ('1'..'9').to_a   #use for validation
  index = 0


  str.chars.each do |char|   #'f' then 'o' then 'o'
    if integer_arr includes char
      index = str[char]
      break
    end
  end

  string = str.slice(0, index)
  integers = str.slice(index, str.length) #-> '1'
  integers = integers.to_i  # -> 1
  integers += 1  # -> 2

  new_string = string + integers #foobar002"

  if integers.digits.length > str.slice(index, str.length).digits.length
    new_chars = str.chars
    new_chars.pop
    return new_chars.join + integers


=end

def increment_string(str)
  integer_arr = ('1'..'9').to_a
  index = 0
  chars = str.chars


  if chars[-1] == '0'
    chars.pop
    chars << '1'
    return chars.join
  end

  if chars.all? {|char| integer_arr.include?(char) == false}
    return str + '1'
  end




  str.chars.each do |char|
    if integer_arr.include?(char)
      index = str.index(char)
      break
    end
  end

  string = str.slice(0, index)
  integers = str.slice(index, str.length)
  integers = integers.to_i
  integers += 1

  new_string = string + integers.to_s



  if integers.digits.length > str.slice(index, str.length).chars.length
    new_chars = string.chars
    if new_chars[-1] == '0'
      new_chars.pop
      return new_chars.join + integers.to_s
    else
      return new_chars.join + integers.to_s
    end
  else
    return new_string
  end
end





p increment_string("foo") == "foo1"
p increment_string("foobar001") == "foobar002"
p increment_string("foobar1") == "foobar2"
p increment_string("foobar00") == "foobar01"
p increment_string("foobar99") == "foobar100"
p increment_string("") == "1"
p increment_string("foo099") == "foo100"
p increment_string("f00bar") == "f00bar1"