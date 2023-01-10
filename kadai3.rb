class Menu
  attr_accessor :name, :price
  def initialize(name, price)
    self.name = name
    self.price = price
    def info
      puts "#{name} #{price} vnd"
    end
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(name, price, size)
    super(name, price)
    self.size = size
    def info
      puts "#{name} #{price} vnd (#{size})"
    end
  end
end

drink1 = Drink.new('Trà', 5000, 'Sサイズ')
drink2 = Drink.new('Trà', 10_000, 'Mサイズ')
menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Bún chả', 40_000)
menu3 = Menu.new('Bánh mì', 20_000)

menus = [menu1, menu2, menu3, drink1, drink2]

menus.each do |menu|
  # if menu.is_a?(Drink)
  # puts "#{menu.name} #{menu.price} vnd (#{menu.size})"
  menu.info
  # else
  # puts "#{menu.name} #{menu.price} vnd"
  # end
end