#write method takes an array and returns a NEw array
#with the elements of the og list in reverse order
#do not modify the original list
#no array#reverse

# Examples:
# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true

# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 3, 2]                     # => true
# new_list == [2, 3, 1]                 # => true

def reverse(arr)
  new_arr = arr.each_with_object([]) do |el, a|
    a.unshift(el)
  end
end

# puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
# puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# puts reverse(['abc']) == ['abc']              # => true
# puts reverse([]) == []                        # => true

# puts list = [1, 3, 2]                      # => [1, 3, 2]
# puts new_list = reverse(list)              # => [2, 3, 1]
# puts list.object_id != new_list.object_id  # => true
# puts list == [1, 3, 2]                     # => true
# puts new_list == [2, 3, 1]                 # => true
