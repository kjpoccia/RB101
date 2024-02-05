YEAR = 2023

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
ret_age = gets.chomp.to_i
ret_year = YEAR + (ret_age - age)

puts "It's #{YEAR}. You will retire in #{ret_year}."
puts "You have only #{ret_year - YEAR} years of work to go!"