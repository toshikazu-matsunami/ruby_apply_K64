class Menu
  attr_accessor :name
  attr_accessor :price
  def display
    return "#{name} #{price}vnd"
  end
end
menu1 = Menu.new
menu1.name = "Phở"
menu1.price = 30_000
menu2 = Menu.new
menu2.name = "Bún chả"
menu2.price = 40_000
menu3 = Menu.new
menu3.name = "Bánh mì"
menu3.price = 20_000
puts menu1.display
puts menu2.display
puts menu3.display