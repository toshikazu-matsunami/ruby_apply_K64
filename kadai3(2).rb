class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name, price)
    self.name = name
    self.price = price
  end

  def display
    puts "#{name} #{price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size

  def initialize(name, price, size)
    super(name, price)
    self.size = size
  end

  def display
    puts "#{name} #{price}vnd (#{size})"
  end
end

menus = []

menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Bún chả', 40_000)
menu3 = Menu.new('Bánh mì', 20_000)

drink1 = Drink.new('Trà', 5000, 'Sサイズ')
drink2 = Drink.new('Trà', 10_000, 'Mサイズ')

menus.push(menu1, menu2, menu3, drink1, drink2)

menus.each do |e|
  e.display
end
