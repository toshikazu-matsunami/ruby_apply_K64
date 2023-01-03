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

menu1 = Menu.new(name: "Phở", price: 30000)
menu2 = Menu.new(name: "Bún chả", price: 40000)
menu3 = Menu.new(name: "Bánh mì", price: 20000)

menus = []
menus.push(menu1)
menus.push(menu2)
menus.push(menu3)

menus.each do |menu|
  menu.showMenu
end