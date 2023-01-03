class Menu
  def initialize(name, price)
    puts "#{name} #{price} vnd"
  end
end

menu1 = ['Phở', 30_000]
menu2 = ['Bún chả', 40_000]
menu3 = ['Bánh mì', 20_000]

menus = [menu1, menu2, menu3]
menus.each {
  |name, price|
  Menu.new(name, price)
}