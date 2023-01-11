class Menu
  attr_accessor :name
  attr_accessor :price
  def show_Menu
    "#{name} : #{price}"
  end
end
class Drink < Menu
  attr_accessor :size
  def show_Menu
    "#{name} : #{price} #{size}"
  end
end
menus = [Menu.new, Menu.new, Menu.new, Drink.new, Drink.new]
menus[0].name = 'Phở'
menus[0].price = 30_000
menus[1].name = 'Banh Mi'
menus[1].price = 20_000
menus[2].name = 'Bun Cha'
menus[2].price = 40_000
menus[3].name = 'Trà'
menus[3].price = 5000
menus[3].size = '(Sサイズ)'
menus[4].name = 'Tra'
menus[4].price = 10_000
menus[4].size = '(Mサイズ)'

(1..5).each do |i|
  puts(menus[i - 1].show_Menu)
end
# menu1に対してget_total_priceメソッドを呼び出してください
