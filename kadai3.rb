class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize (name, price)
    @name = name
    @price = price
    print "#{@name} #{@price} vnd"
  end
end

class Drink < Menu
  attr_accessor :price
  def initialize (name, price, size) 
    super(name, price)
    @size = size
    print " (#{@size})"
  end
end

menu1 = ["Phở", 30000]
menu2 = ["Bún chả", 40000]
menu3 = ["Bánh mì", 20000]
drink1 = ["Trà", 5000, "Sサイズ"]
drink2 = ["Trà", 10000, "Mサイズ"]
menus = [menu1, menu2, menu3, drink1, drink2]
menus.each do |name, price, size|
  if size == nil
    Menu.new name, price
  else
    Drink.new name, price, size
  end
  puts
end 



