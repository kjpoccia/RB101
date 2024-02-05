def print_in_box(phrase)
  top_or_bottom_border = "+#{'-' * (phrase.length + 2)}+"
  just_inside_border = "|#{' ' * (phrase.length + 2)}|"

  puts top_or_bottom_border
  puts just_inside_border
  puts "| #{phrase} |"
  puts just_inside_border
  puts top_or_bottom_border
end

print_in_box('To boldly go where no one has gone before.')
print_in_box(" ")
