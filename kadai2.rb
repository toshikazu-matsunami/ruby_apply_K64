class Menu
 attr_accessor :name
 attr_accessor :price

  def initialize(name:, price:)
    self.name = name
    self.price = price
  end

  def info()
    print "#{self.name} "
    print "#{self.price} "
    print "\n"
  end
end

menu1 = Menu.new(name:"Phở",price:30000)
menu2 = Menu.new(name:"Bún chả",price:40000)
menu3 = Menu.new(name:"Bánh Mì",price:20000)
menus = Array.new

menus.push(menu1,menu2,menu3)
menus.each{|menu| menu.info}