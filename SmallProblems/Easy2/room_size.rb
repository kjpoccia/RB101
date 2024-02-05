SQ_FEET_TO_SQ_INCHES = 144
SQ_FEET_TO_SQ_CENTIMETERS = 929.03

puts "Enter the length of the room in feet"
length = gets.chomp.to_f

puts "Enter the width of the room in feet"
width = gets.chomp.to_f

area_feet = length * width
area_inches = area_feet * SQ_FEET_TO_SQ_INCHES
area_centimeters = area_feet * SQ_FEET_TO_SQ_CENTIMETERS

puts "The area of the room is #{format("%.2f", area_feet)} square feet " + \
     "(#{format("%.2f", area_inches)} square inches and " + \
     "#{format("%.2f", area_centimeters)} square centimeters)."