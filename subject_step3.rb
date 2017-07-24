class Drink
  @@sum = 0
  @@post = []
  @@sales = []

# 飲み物の管理
  def initialize(name, price)
    hash = {}
    hash [:name] = name
    hash [:price] = price
    @@post << hash
  end

# ドリンクの一覧を表示する場合
  def self.look_drink
    @@post.each do |list|
      print list[:name].chomp
      print list[:price]
      puts "円"
      puts "＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝"
      puts "数字を選択してください"
      puts "[0]購入する\n[1]最初の画面に戻る"
      input3 = gets.to_i
        if input3 == 0
          puts list[:name]
          puts "上から順番に012345・・・と選択してお選びください"
          input4 = gets.to_i
          puts @@post(input4)
          @@sales << @@post
          @@post.delete(input4)

        elsif input3 == 1
          puts "最初の画面に戻ります"
        else
          puts "選択し直してください"
        end
  end

# お金の投入を選んだ場合
  def self.choice_money
    puts "いくら入れますか？"
    puts "[0]1\n[1]5\n[2]10\n[3]50\n[4]100\n[5]500\n[6]1000\n[7]2000\n[8]5000\n[9]10000"
    moneys = [1, 5, 10, 50, 100, 500, 1000, 2000, 5000, 10000]
    input2 = gets.to_i
# お金の合計の計算
# if文はstep1で追加したところ
      if (input2 == 2) || (input2 == 3) || (input2 == 4) || (input2 == 5) || (input2 == 6)
        puts "#{moneys[input2]}" + "円"
        @@sum = @@sum + moneys[input2]
      elsif (input2 == 0) || (input2 == 1) || (input2 == 7) || (input2 == 8) || (input2 == 9)
        puts "#{moneys[input2]}" + "円はこの自動販売機では使えません"
      else
      puts "指定の選択肢は存在しないので、やり直してください"
      end
  end

# 合計を選んだ場合
  def self.sum_money
    puts "合計は#{@@sum}円です"
  end

# 払い戻しを選んだ場合
  def self.return_money
    puts "#{@@sum}円払い戻しました"
    @@sum = 0
  end

# 売上表示を選んだ場合
 def self.sales
    puts "現在の売上は#{aaa}です。"

end

# ジュース情報
cola = Drink.new("コーラ", 120)
cola = Drink.new("コーラ", 120)
cola = Drink.new("コーラ", 120)
cola = Drink.new("コーラ", 120)
cola = Drink.new("コーラ", 120)

# 繰り返しさせるためのやつ
while true do

# 最初の画面のための変数
top = "[0]ドリンクの一覧を表示\n[1]お金の投入\n[2]合計\n[3]払い戻し"
coment1 = "数字を選択してください"
line = "\n＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝"

# 自販機の最初の画面
puts line
puts top + line
puts coment1 + line
input1 = gets.to_i

# 選択後のアクション

  if input1 == 0
    Drink.look_drink
  elsif input1 == 1
    Drink.choice_money
  elsif input1 == 2
    Drink.sum_money
  elsif input1 == 3
    Drink.return_money
  elsif input1 == 4
    Drink.sales
  else
    puts "選択をやり直してください"
  end

end

# step3
# 投入金額、在庫の点で、コーラが購入できるかどうかを取得できる。
# ジュース値段以上の投入金額が投入されている条件下で購入操作を行うと、ジュースの在庫を減らし、売り上げ金額を増やす。
# 投入金額が足りない場合もしくは在庫がない場合、購入操作を行っても何もしない。
# 現在の売上金額を取得できる。
# 払い戻し操作では現在の投入金額からジュース購入金額を引いた釣り銭を出力する。

# step2
# 値段と名前の属性からなるジュースを１種類格納できる。初期状態で、コーラ（値段:120円、名前”コーラ”）を5本格納している。
# 格納されているジュースの情報（値段と名前と在庫）を取得できる。

# step1
# 想定外のもの（硬貨：１円玉、５円玉。お札：千円札以外のお札）が投入された場合は、投入金額に加算せず、それをそのまま釣り銭としてユーザに出力する。

# step0
# 10円玉、50円玉、100円玉、500円玉、1000円札を１つずつ投入できる。
# 投入は複数回できる。
# 投入金額の総計を取得できる。
# 払い戻し操作を行うと、投入金額の総計を釣り銭として出力する。
