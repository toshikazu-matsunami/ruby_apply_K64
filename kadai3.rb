class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name:,price:)
    self.name = name
    self.price = price
  end

  def showMenu
    puts "#{self.name} #{self.price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size

  def initialize(name:,price:,size:)
    super(name: name, price: price)
    self.size = size
  end

  def showMenu
    puts "#{self.name} #{self.price}vnd (#{self.size}サイズ)"
  end
end

menu1 = Menu.new(name: "Phở", price: 30000)
menu2 = Menu.new(name: "Bún chả", price: 40000)
menu3 = Menu.new(name: "Bánh mì", price: 20000)

drink1 = Drink.new(name: "Trà", price: 50000, size: "S")
drink2 = Drink.new(name: "Trà", price: 100000, size: "M")

menus = []
menus.push(menu1)
menus.push(menu2)
menus.push(menu3)
menus.push(drink1)
menus.push(drink2)

menus.each do |menu|
  menu.showMenu
end