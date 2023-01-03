puts 'PhamVanUy-20194716'
class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください
  def initialize(name, price)
    self.name = name
    self.price = price
  end

  def print_menu
    puts "#{name} #{price} vnd"
  end
end
menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Bún Chả', 40_000)
menu3 = Menu.new('Bánh Mì', 20_000)

menu1.print_menu
menu2.print_menu
menu3.print_menu

class Drink
  attr_accessor :namedr
  attr_accessor :pricedr
  attr_accessor :sizedr
  def initialize(namedr, pricedr, sizedr)
    self.namedr = namedr
    self.pricedr = pricedr
    self.sizedr = sizedr
  end

  def print
    puts "#{namedr} #{pricedr} vnd #{sizedr}"
  end
end

drink1 = Drink.new('Trà', 5000, '(Sサイズ)')
drink2 = Drink.new('Trà', 10_000, '(Mサイズ)')

drink1.print
drink2.print
