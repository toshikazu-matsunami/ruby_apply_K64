# メニューを表すクラス
class Menu
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

# ドリンクのクラスを定義し、メニューのクラスを継承する
class Drink < Menu
  attr_accessor :size
  def initialize(name, price,size)
    super(name,price)
    @size = size
  end
end

# メニューの変数を定義する
menu1 = Menu.new('Pho', 30000)
menu2 = Menu.new('Bun Cha', 40000)
menu3 = Menu.new('Banh Mi', 20000)
drink1 = Drink.new('コーヒー', 300,'S')
drink2 = Drink.new('紅茶', 400,'M')

# メニューを配列として保存する
menus = [menu1, menu2, menu3, drink1, drink2]

# 繰り返し処理を使用して、料理とドリンクのメニューを一覧表示する
menus.each do |menu|

  if menu.respond_to?(:size)
  puts "#{menu.name} #{menu.price}vnd (#{menu.size} サイズ)  "
  else
  puts "#{menu.name} #{menu.price}vnd"
  end
end