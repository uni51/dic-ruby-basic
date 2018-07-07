# 以下に選択ソートを行う関数を定義してください
# 一番小さなデータあるいは大きなデータを選択して、先頭から順に並べ替えていく（繰り返し処理）
def selection_sort(numbers)
  i = 0
  while i < (numbers.length) -1 do
    p(numbers)
    indexMin = i
    k = i + 1
    while k < (numbers.length) do
      if numbers[k] < numbers[indexMin]
        indexMin = k
      end
      k = k + 1
    end
    numbers[indexMin], numbers[i] = numbers[i], numbers[indexMin]
    i = i + 1
  end
  p(numbers)
end

numbers = [12,13,11,14,10]

selection_sort(numbers)