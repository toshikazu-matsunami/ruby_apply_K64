class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name:, price:)
    @name = name
    @price = price
    print "#{name} #{price} vnd"
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(name:, price:, size:)
    super(name: name, price: price)
    @size = size
    print " (#{size})"
  end
end

menu1 = ['Phở', 30_000]
menu2 = ['Bún chả', 40_000]
menu3 = ['Bánh mì', 20_000]
drink1 = ['Trà', 5_000, 'Sサイズ']
drink2 = ['Trà', 10_000, 'Mサイズ']

menus = [menu1, menu2, menu3, drink1, drink2]
menus.each {
  |name, price, size|
  if size == nil
    Menu.new(name: name, price: price)
  else
    Drink.new(name: name, price: price, size: size)
  end
  puts
}
