def print_in_box(phrase)

  top_or_bottom_border = "+#{'-' * [(phrase.length + 2),78].min}+"
  just_inside_border = "|#{' ' * [(phrase.length + 2),78].min}|"


  puts top_or_bottom_border
  puts just_inside_border
  if (phrase.length + 2) < 79
    puts "| #{phrase} |"
  else 
    short_phrase = phrase.split("")
    print "| " + short_phrase[0,76].join + " |\n"
  end 
  puts just_inside_border
  puts top_or_bottom_border
end

long_message = 'Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). '
print_in_box(long_message)
print_in_box(" ")

#Further exploration
#Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window 
#(80 columns, including the sides of the box). 