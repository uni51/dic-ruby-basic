def hogehoge
  for num in 1..40
    if num %3 == 0
      num = "Hoge"
    elsif num.to_s.include?("3")
      num = "Hoge"
    end
    puts num
  end
end

hogehoge
