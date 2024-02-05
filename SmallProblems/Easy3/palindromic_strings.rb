# def palindrome?(string_or_array)
#   length = string_or_array.size
#   reverse = []
#   index = -1
#   while length > 0
#     reverse << string_or_array[index]
#     index -= 1
#     length -= 1
#   end
#   reverse == reverse.reverse
# end

def palindrome?(string_or_array)
  string_or_array == string_or_array.reverse
end

puts palindrome?(["m","a","d","a","m"])
puts palindrome?([true, false, nil, -3, nil, false, true])
puts palindrome?(["a","c"])
puts palindrome?("madam")
puts palindrome?("madam?")