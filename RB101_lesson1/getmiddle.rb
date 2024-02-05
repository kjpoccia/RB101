def center_of(phrase)
  if phrase.length % 2 == 0
    puts phrase.slice((phrase.length/2 - 1)..(phrase.length/2))
  else
    puts phrase.slice(phrase.length/2)
  end
end

center_of("I love ruby")
center_of("Launch school")
center_of("Launch")
center_of("Launchschool")
center_of("x")