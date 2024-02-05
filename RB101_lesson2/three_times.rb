def three_times(string, char)
  counter = 0
  third_index = nil
  string.length.times do |x|
    if string[x] == char
      counter += 1
      if counter == 3
        third_index = x
      end
    else 
      next
    end
  end

  return third_index
end

puts three_times("what is up beebopaloopops", "p")