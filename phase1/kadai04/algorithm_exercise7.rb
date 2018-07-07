def janken
  puts "1:グー\n2:チョキ\n3:パー"

  input_number = gets.to_i

  jankens = ["グー", "チョキ", "パー"]

  case input_number
  when 1
    calc_number = 0
  when 2
    calc_number = 1
  when 3
    calc_number = 2
  else
    puts '1~3の数字を入力してください'
    exit
  end

  player_hand = calc_number

  program_hand = rand(3)

  puts "あなたの手:#{jankens[player_hand]}, わたしの手:#{jankens[program_hand]}"

	judge_remainder = (player_hand - program_hand + 3) % 3

  if judge_remainder == 2
    puts "あなたの勝ちです"
    next_gane = false
  elsif judge_remainder == 1
    puts "あなたの負けです"
    next_gane = false
  elsif judge_remainder == 0
    puts "あいこで"
    next_game = true
  end
end

next_game = true

puts "最初はグー、じゃんけん..."

# じゃんけんを繰り返す
while next_game do
  next_game = janken
end
