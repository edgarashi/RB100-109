###NOW_I_KNOW_MY_ABCS###

##Problem##
# a collection of spelling blocks has two letters per block
# as show in this list:
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# this limits the words you can spell with the blocks
# to just those words that do not use both letters
# from any given block

# **each block can only be used once**

# write a method that returns true if the word passed in
# as an argument can be spelled from this set of blocks
# false otherwise

##Pseudocode//Algo##
# Define method 'block word?' that takes string argument
# create a CONSTANT array called building_blocks
  # B:O   X:K   D:Q   C:P   N:A
  # G:T   R:E   F:S   J:W   H:U
  # V:I   L:Y   Z:M
# in method
#   create variable "up_string"
#     equal to string.upcase
#     use .none? on BLOCKS constant
#       (returns true if block never returns true for all elements)
#       {|block| up_string.count(block) >= 2}

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? {|block| up_string.count(block) >= 2}
end



p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true