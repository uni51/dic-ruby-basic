require 'rubycards'
include RubyCards

# Hnadインスタンスの生成
hand = Hand.new

# Deckインスタンスの生成
deck = Deck.new
puts "======before shuffle======"
puts deck

# デッキのシャッフル
deck = deck.shuffle!
puts "======after shuffle======"
puts deck

# デッキからカードを10枚引く
hand = hand.draw(deck,10)
puts "======after draw======"
puts hand

# handオブジェクトを配列に型変換
target = hand.to_a

# FIXME （targetを昇順にソートしてください）

# 以下にバブルソートを行う関数を定義
def bubble_sort(numbers)
  for i in 0..((numbers.length)-1)
    p("繰り返しの回数:#{i}回目")
    for j in 1.. ((numbers.length)-i-1)
      p("添字が#{j}の要素と、添字が#{j-1}の要素を比較")
      if numbers[j-1] > numbers[j]
        numbers[j-1],numbers[j] = numbers[j],numbers[j-1]
      end
      p(numbers)
    end
  end
end

bubble_sort(target)


# hand = hand.sort!は使用しないでください。
# 並び替えた配列でHandオブジェクトのインスタンスを作成
hand = Hand.new(target)
puts "======after sort======"
puts hand