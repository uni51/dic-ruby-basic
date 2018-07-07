def greatest_common_divisor(a,b)
  c = a % b
  if c == 0
    return b
  else
    greatest_common_divisor(b,c)
  end
end

puts greatest_common_divisor(48,20)
