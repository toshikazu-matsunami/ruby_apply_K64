class Menu
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end
menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Bún chả', 40_000)
menu3 = Menu.new('Bánh mỳ', 20_000)
menus = [menu1, menu2, menu3]
menus.each do |menu|
  puts "#{menu.name} #{menu.price}VNĐ"
end
