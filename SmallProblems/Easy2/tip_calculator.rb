puts "Please enter the bill total:"
total = gets.chomp.to_f

puts "Please enter the tip rate as a percentage (so 20 for 20%):"
percentage = gets.chomp.to_f / 100
tip = total * percentage

puts "The tip is $#{format("%.2f", tip)}"
puts "The total is $#{format("%.2f", tip + total)}"