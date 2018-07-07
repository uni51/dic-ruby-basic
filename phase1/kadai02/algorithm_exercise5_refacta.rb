class HogeHoge
  
  def initialize(roop_num, division_num)
    @roop_num = roop_num
    @division_num = division_num
  end
  
  def show_message
    for num in 1..@roop_num
      if num % @division_num == 0 || num.to_s.include?("#{@division_num}")
        num = "Hoge"
      end
      puts num
    end
  end
end

hogehoge = HogeHoge.new(40,3)
hogehoge.show_message
