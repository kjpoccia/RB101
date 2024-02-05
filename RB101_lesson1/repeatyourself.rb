def repeat(phrase, number)
  counter = 1
  while counter <= number
    puts phrase
    counter += 1
  end
end

repeat("Hello!", 3)
repeat("What's up?", 1)
repeat("Working, you?", 0)
repeat("Weep woop", 7)