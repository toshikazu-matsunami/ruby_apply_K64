# Define Menu class
class Menu
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

# Define Drink class, which inherits from Menu class
class Drink < Menu
  def initialize(name, price)
    super
  end
end

# Define menu and drink variables
menu1 = Menu.new("Phở", 30000)
menu2 = Menu.new("Bún chả", 40000)
menu3 = Menu.new("Bánh mì", 20000)
drink1 = Drink.new("Trà(Sサイズ)", 5000)
drink2 = Drink.new("Trà(Sサイズ)", 10000)

# Define menus array and assign menu and drink variables as elements
menus = [menu1, menu2, menu3, drink1, drink2]

# Iterate through menus array and print each menu item
menus.each do |menu|
  puts "#{menu.name} #{menu.price}"
end
