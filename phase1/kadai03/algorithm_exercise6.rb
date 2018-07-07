def case_differences(target_word)
  merge_conversion_char = ""
  target_word_length = target_word.length
  for num in 0..target_word_length-1
    judge_char = target_word.slice(num)

    if judge_char == judge_char.upcase # 引数の文字が大文字だった場合
      conversion_char = judge_char.downcase # 大文字に変換
    else
      conversion_char = judge_char.upcase # 小文字に変換
    end
    merge_conversion_char += conversion_char
  end
  puts merge_conversion_char
end

case_differences("WordPress")
