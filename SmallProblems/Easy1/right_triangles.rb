def triangle(length, corner = "UR")
  case corner
  when "UR"
    length.times {|n| puts (" " * n) + "*" * (length - n)}
  when "UL"
    length.times {|n| puts ("*" * (length - n)) }
  when "LR"
    length.times {|n| puts " " * (length - n - 1) + "*" * (n + 1)}
  when "LL"
    length.times {|n| puts "*" * (n + 1)}
  end
end

triangle(5, "UL")
triangle(5, "UR")
triangle(5, "LL")
triangle(5, "LR")
triangle(9)