# 以下に線形探索法を行う関数を定義してください
# 線形探索法は、リストや配列に入ったデータを先頭から順に調べていく検索のアルゴリズム
def linear_search(numbers,value)
  i = 0
  while i < numbers.length
    if numbers[i] == value
      return i
    end
    i+=1
  end
  return "None" # 探したい数字が無い場合の処理
end

numbers = [1,3,5,11,12,13,17,22,25,28]
p(numbers)

puts('探したい数字を入力してください')
target_number = gets.to_i

message = linear_search(numbers,target_number)

puts(message)