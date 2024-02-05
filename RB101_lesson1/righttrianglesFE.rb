def triangle(n, position)
  
  case position
  when "upper_right"
    x = 0
    while x < n
      print " " * x + "*" * (n - x) + "\n"
      x += 1
    end
  when "lower_right"
    x = n - 1
    while x >= 0
      print " " * x + "*" * (n - x) + "\n"
      x -= 1
    end
  when "lower_left"
    x = n - 1
    while x >= 0
      print "*" * (n - x) + "\n"
      x -= 1
    end
  when "upper_left"
    x = 0
    while x < n
      print "*" * (n - x) + "\n"
      x += 1
    end
  end
end

triangle(9, "upper_right")
triangle(9, "lower_right")
triangle(9, "lower_left")
triangle(9, "upper_left")