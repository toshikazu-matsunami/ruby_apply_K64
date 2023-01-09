# メニューを表すクラス
class Menu
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

# メニューの変数を定義する
menu1 = Menu.new('ピザ', 800)
menu2 = Menu.new('ハンバーグ', 1000)
menu3 = Menu.new('スパゲッティ', 700)
menu4 = Menu.new('Pho', 30000)
menu5 = Menu.new('Bun cha', 40000)
menu6 = Menu.new('Banh Mi', 20000)
# メニューを配列として保存する
menus = [menu1, menu2, menu3,menu4,menu5,menu6]

# 繰り返し処理を使用して、料理のメニューを一覧表示する
menus.each do |menu|
  puts "#{menu.name} #{menu.price}vnd"
end
