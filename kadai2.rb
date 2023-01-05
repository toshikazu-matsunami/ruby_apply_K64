class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください
  def initialize(name, price)
    @name = name
    @price = price
  end

  def print_list
    puts "#{name} #{price}vnd"
  end
end

menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Bún chả', 40_000)
menu3 = Menu.new('Bánh mì', 20_000)

menu = [menu1, menu2, menu3]

menu.each do |e|
  e.print_list
end
