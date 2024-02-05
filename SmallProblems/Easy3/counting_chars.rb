def count_chars(string)
  chars = string.split('')
  chars.delete(" ")
  chars.length
end

puts "Please write word or multiple words:"
input = gets.chomp

puts "There are #{count_chars(input)} characters in #{input}."