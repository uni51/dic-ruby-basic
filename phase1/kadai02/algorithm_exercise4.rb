def repeat_string(str)
  conversion_char = ""
  if str.size > 5
    str = str.slice(0,4)
  end

  for num in 1..3
    conversion_char = conversion_char + str
  end

  puts conversion_char
end

repeat_string('Python')
repeat_string('Go')
repeat_string('Java')