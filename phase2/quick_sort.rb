# クイックソート
# 基準値を選んで、それよりも小さいデータのグループと、大きいデータのグループに分ける」といった処理を繰り返し実行する
def quick_sort(sort_number)
  return sort_number if sort_number.size < 2
  # 基準値を設定
  target = sort_number.shift # shift:配列の先頭を取得
  # 基準値より大きい要素、小さい要素を格納する配列を用意
  smallers = []
  biggers = []
  sort_number.each do |sort_numbers|
      if sort_numbers < target
          smallers << sort_numbers # <<演算子:左辺の配列の末尾に右辺の要素を加える。
      else
          biggers << sort_numbers
      end
  end
  quick_sort(smallers) + [target] + quick_sort(biggers) # 分けたデータに対して繰り返し同じ処理を実行する(再帰処理)
end

numbers = [4,8,6,5,2,1,3,9,7]

p quick_sort(numbers)