class Food
  @@sum = 0

  def initialize(name, calory)
    @name = name
    @calory = calory
    @@sum = @@sum + calory
  end

  def self input
    puts "料理名を入力してください:"
    post[name] << gets
    puts "カロリーを入力してください:"

  end

  def self show_all_calory
    puts "カロリーの合計は#{@@sum}です"
  end

  def
    aaa
  end

end

melonpan = Food.new("メロンパン", 430)
pasta = Food.new("スパゲッティ", 720)
banana = Food.new("バナナ", 80)

post = [name, calory]

while true do
  puts "[0]:カロリーを入力する"
  puts "[1]:カロリーの合計を見る"
  input = gets.to_i

  if input == 0
    Food.input           # カロリーの入力
  elsif input == 1
    Food.show_all_calory # カロリーの合計を表示
    exit
  end
end

