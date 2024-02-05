def print_message(phrase)
end





def print_in_box(phrase)
  length = [(phrase.length + 2),78].min
  top_or_bottom_border = "+#{'-' * length}+"
  just_inside_border = "|#{' ' * length}|"

  puts top_or_bottom_border
  puts just_inside_border
  puts print_message(phrase)
  puts just_inside_border
  puts top_or_bottom_border
end

long_message = 'Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). '
print_in_box(long_message)
print_in_box(" ")

#For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.