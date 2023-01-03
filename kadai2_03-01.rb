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
    puts "#{name} #{price}vnd"
  end
end
menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Bún Chả', 40_000)
menu3 = Menu.new('Bánh Mì', 20_000)

# menu1に対してget_total_priceメソッドを呼び出してください

menu1.print_menu
menu2.print_menu
menu3.print_menu
