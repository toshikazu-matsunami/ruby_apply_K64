class Menu
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
  
  # get_total_priceメソッドを定義してください
  def get_total_price(count)
    total_price = count * price
    return "#{name} #{total_price} vnd"
  end
end

class Drink < Menu
  attr_reader :size

  def initialize(name, size, price)
    super(name, price)
    @size = size
  end

  def get_total_price(count)
    return super + " (#{size}サイズ)"
  end
end

drink1 = Drink.new("Trà", 'S', 5000)
# puts drink1.get_total_price(2)

drink2 = Drink.new("Trà", 'M', 10000)
# puts drink1.get_total_price(2)

menu1 = Menu.new('Phở', 30000)
menu2 = Menu.new('Bún chả', 40000)
menu3 = Menu.new('Bánh mì', 20000)

menus = [menu1, menu2, menu3, drink1, drink2]
menus.each do |menu|
  puts menu.get_total_price(1)
end
