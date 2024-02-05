def print_in_box(string)
  length = string.size + 2
  puts "+" + ("-" * length) + "+"
  puts "|" + (" " * length) + "|"
  puts "| " + string + " |"
  puts "|" + (" " * length) + "|"
  puts "+" + ("-" * length) + "+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box(" ")