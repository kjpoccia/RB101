def center_of(string)
  if string.length.even?
    middle = string[(string.length/2 - 1)..string.length/2]
  else
    middle = string[string.length/2]
  end
  middle
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'