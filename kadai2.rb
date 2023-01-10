class Menu
  attr_accessor :name, :price

  def initialize(name, price)
    self.name = name
    self.price = price
    # def info
    # puts "#(name #(price) vnd"
    # end
  end
end

menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Bún chả', 40_000)
menu3 = Menu.new('Bánh mì', 20_000)

menus = [menu1, menu2, menu3]

menus.each do |menu|
  puts "#{menu.name} #{menu.price} vnd"
  # menu.info
end