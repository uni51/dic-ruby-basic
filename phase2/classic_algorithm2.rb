# 以下に二分探索法を行う関数を定義してください
def binary_search(numbers,value)
  head = 0
  tail = numbers.length

  while head <= tail do
    center = ((head + tail) / 2).round
    if (numbers[center] == value)
      return center
    elsif (numbers[center] < value)
      head = center + 1
    else
      tail = center - 1
    end
  end
  return "None" # 探したい数字が無い場合の処理
end

numbers = [1,3,5,11,12,13,17,22,25,28]
p(numbers)

puts('探したい数字を入力してください')
target_number = gets.to_i

message = binary_search(numbers,target_number)

puts(message)