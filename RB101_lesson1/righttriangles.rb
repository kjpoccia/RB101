def triangle(n)
  x = n - 1
  while x >= 0
    print " " * x + "*" * (n - x) + "\n"
    x -= 1
  end
end

triangle(5)
triangle(9)

