class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name, price)
    @name = name
    @price = price
  end
  def show_menu
    puts "#{name}  #{price}vnd"
  end
end
menu1 = Menu.new('Pho', 30_000)
menu2 = Menu.new('Bun cha', 40_000)
menu3 = Menu.new('Banh mi', 20_000)
menu = [menu1, menu2, menu3]
menu.each do |i|
  i.show_menu
end
