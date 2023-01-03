class Menu
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end
class Drink < Menu
  attr_accessor :size

  def initialize(name, price, size)
    super(name, price)
    @size = size
  end
end
menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Bún chả', 40_000)
menu3 = Menu.new('Bánh mỳ', 20_000)
drink1 = Drink.new('Trà', 5000, 'Sサイズ')
drink2 = Drink.new('Trà', 10_000, 'Mサイズ')
menus = [menu1, menu2, menu3, drink1, drink2]
menus.each do |menu|
  if menu.instance_of?(Menu)
    puts "#{menu.name} #{menu.price}VNĐ"
  else
    puts "#{menu.name} #{menu.price}VNĐ (#{menu.size})"
  end
end
