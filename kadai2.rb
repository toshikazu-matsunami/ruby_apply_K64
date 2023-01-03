class Menu
 attr_accessor :name
 attr_accessor :price
  def initialize(name:, price:)
    @name = name
    @price = price 
  end
end
# Define menu variables
menu1 = "Phở 30000vnd"
menu2 = "Bún chả 40000vnd"
menu3 = "Bánh mì 20000vnd"

# Define menus array and assign menu variables as elements
menus = [menu1, menu2, menu3]

# Iterate through menus array and print each menu item
menus.each do |menu|
  puts menu
end