# age = 30
# puts "#{age}歳になります"

# puts(10 < 20) #10は20より小さいか
# puts(30 > 20) #30は20より大きいか
# puts(15 == 20) #15は20と同じか

# age = 20

# case age
# when 10
#  puts "私はまだまだ子供です"
# when 20 #ここでcaseの値と一致する
#  puts "成人になりました"
# when 60
#  puts "定年です"
# else
#  puts ""
# end



# dive = 1 #はじめに1が変数diveに代入される。

# while dive < 5  #値が5になると条件式がfalseになり処理が終了
#  puts "#{dive}回目" #処理内容
#  dive += 1 #ループごとに変数diveに1を加算
# end


# for number in 0..10 do
#     puts number
# end


# 10.times do #10回表示することを指定
#  puts "Hello World" #表示させる値（処理）
# end


# teacher = ["noro", "miyashita", "nakao"]
# p teacher

# teacher << "matsumoto"
# p teacher

# dic_members = {ceo:"noro", ai_teacher:"nakao", rails_teacher:"miyashita"}
# puts dic_members[:ceo]


# players_count = {baseball:9, soccer:11, basketball:5}
# puts players_count[:soccer]


# dic_member = {position: {ceo: "noro", ai_teacher: "nakao", rails_teacher: "miyashita"}}
# puts dic_member[:position][:ceo]


# blog = [{title: "今日は暑いな", content: "でも頑張るぞ"},{title: "今日の仕事が終われば", content: "明日から旅行だ"},{title: "明日から", content: "プログラミングするぞ"}]
# puts blog[2][:title]


# dic_member = {ceo: "noro", ai_teacher: "nakao", rails_teacher: "miyashita"}
# dic_member[:mentor] = "matsumoto"
# p dic_member


# test = [{subject:"math",points:70},{subject:"english",points:50},{subject:"society",points:80}]
# test << {subject:"science",points:100}
# p test[3][:points]


# tenki = ["晴れ", "曇り", "雨"]
# puts tenki[0]
# puts tenki[1]
# puts tenki[2]


# ["晴れ", "曇り", "雨"].each do |tenki|
#  puts tenki
# end


{title:"こんにちは", content:"寒いですね"}.each do |key, value|
    puts "#{key} #{value}"
end