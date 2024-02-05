LETTERS_WIDTH = 76
LETTERS_WIDTH_F = 76.0

def print_message(string, length)
  lines = (string.size / LETTERS_WIDTH_F).ceil
  end_position = string.size % LETTERS_WIDTH

  start = 0
  while lines > 1
    trunc_string = string[start..(start + LETTERS_WIDTH - 1)]
    puts "| #{trunc_string} |"
    start += LETTERS_WIDTH
    lines -= 1
  end

  if lines == 1
    trunc_string = string[start..(start + end_position)]
    puts "| " + trunc_string + " " * (length - end_position) + " |"
  end
end

def print_in_box(string)
  if string.size > LETTERS_WIDTH
    length = LETTERS_WIDTH
  else
    length = string.size + 2
  end

  top_bottom_line = "+-" + ("-" * length) + "-+"
  middle_lines = "| " + (" " * length) + " |"

  puts top_bottom_line
  puts middle_lines
  print_message(string, length)
  puts middle_lines
  puts top_bottom_line

end

print_in_box('Just try this')
print_in_box('Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.')
print_in_box(" ")