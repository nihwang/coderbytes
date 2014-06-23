# Using the Ruby language, have the function ArrayAdditionI(arr) take the array of numbers stored in arr and return the string true if any combination of numbers in the array can be added up to equal the largest number in the array, otherwise return the string false. For example: if arr contains [4, 6, 23, 10, 1, 3] the output should return true because 4 + 6 + 10 + 3 = 23. The array will not be empty, will not contain all the same elements, and may contain negative numbers. 

# 1. find the largest number in the array
# 2. substract it from the array
# 3. take whats in the new array and add it togehter, and if it equals the largest number return true
# 4. 

def ArrayAdditionI(arr)
    largest_num = arr.max
    sum = 0

    sum = arr.inject(:+) - largest_num
    
    return true if sum == largest_num
    
    arr.each do |number|
        if number != largest_num
            return true if sum - number == largest_num
        end
    end
    
    return false
end


p ArrayAdditionI([2,4,5,9,11])
