=begin
Problem
  given an array of integers, construct a 'product array'
  of the same size

  Notes
    -array size is at least 2
    -array will only be positives
    -repetition of numbers could occur

Examples:
productArray ({12,20}) ==>  return {20,12}
  first element of return '12'
    product of all array's elements except first element
  second element of return '20
    product of all array's elements except second element

productArray ({1,5,2}) ==> return {10,2,5}
  first element '10'
    product of all array's elements except 1
  second element '2'
    product of all arrays elements except second element 5
  third element 5
    product of all arrays elements except last element 2

Pseudocode/Algo
  so first refresh rules
   end product array must be same size as input array (numbers)
  and essentially, we are being asked for each input element to product array
  to be the product of all elements EXCEPT the current index

So essentially I need an array that I pass all elements to
  other than current index
  get the product in this array
  and pass to product array


=end

def product_array(numbers)
  product = []

  0.upto(numbers.length - 1) do |index|
    arr = []
    numbers.each_with_index do |num, index2|
      arr << num
    end
    arr.delete_at(index)
    product << arr.inject(:*)
  end
  product
end

p product_array([12,20]) #== [20,12]
p product_array([12,20]) #== [20,12]
p product_array([3,27,4,2]) #== [216,24,162,324]
p product_array([13,10,5,2,9]) #== [900,1170,2340,5850,1300]
p product_array([16,17,4,3,5,2]) #== [2040,1920,8160,10880,6528,16320]
p product_array([7, 6, 13, 47, 8, 5, 6, 11, 80]) == [774259200, 903302400, 416908800, 115315200, 677476800, 1083962880, 903302400, 492710400, 67747680]