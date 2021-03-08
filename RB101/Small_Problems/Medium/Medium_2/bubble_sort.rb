###BUBBLE_SORT###

##Problem##
# write a method that does a bubble sort of an array

# bubble sort-
#   makes multiple passes(iterations) thru array
#   on each pass, pair of consecutive elements compared
#   if first of two elements is greater than second
#     elements swapped

#   process repeated until a complete pass is made w/o
#   performing any swaps

##Pseudocode//Algo##
# start a loop
#   set value 'swapped' to false
#   1.upto(arr.size - 1) do |index|
#     next if arr[index - 1] <= arr[index]
#     arr[index - 1], arr[index] = arr[index], arr[index - 1]
#     set swapped to true

#     break unless swapped


def bubble_sort!(arr)
  loop do
    swapped = false
    1.upto(arr.size - 1) do |index|
      next if arr[index - 1] <= arr[index]
      arr[index - 1], arr[index] = arr[index], arr[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end


array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)