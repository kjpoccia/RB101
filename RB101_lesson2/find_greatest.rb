def find_greatest(numbers)
  return if numbers.nil?
  
  saved_number = numbers[0]

  numbers.each do |x|
    if saved_number >= x
      next
    else
      saved_number = x
    end
  end

  saved_number
end

array = [9,8,9,7,5,8,19,20,0,1]

puts find_greatest(array)