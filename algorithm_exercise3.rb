def sort_algo(sample_list)
  if sample_list.instance_of?(Array) # 引数が配列かどうかチェックする
    first_element = sample_list.first # 配列の先頭の要素を抽出
    last_element = sample_list.last # 配列の末尾の要素を抽出

    sample_list.delete_at(0) # 配列の先頭の要素を削除
    sample_list.delete_at(-1) # 配列の末尾の要素を削除

    sample_list.unshift(last_element) # 配列の先頭に末尾だった要素を追加
    sample_list.push(first_element) # 配列の末尾に先頭だった要素を追加

    return sample_list
  else
    puts "引数は配列で指定してください"
  end
end

sample_list = ["a", "b", "c"]
p sort_algo(sample_list)
