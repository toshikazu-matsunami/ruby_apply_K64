class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name,price)
    self.name = name
    self.price = price
  end
  def display
      return "#{name} #{price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(name,price,size)
    super(name,price)
    self.size = size
  end
  def display
      return "#{name} #{price}vnd (#{size}サイズ)"
  end
end
# drink1 = Drink.new("Trà",5000,"S")
# drink2 = Drink.new("Trà",10000,"M")
# puts drink1.display
# puts drink2.display
menus = [
  ["Phở" , 30000, ""],
  ["Bún chả", 40000, ""],
  ["Bánh mì", 20000, ""],
  ["Trà",5000,"S"],
  ["Trà",10000,"M"]
]
menus.each do |name,price,size|
  if size.empty?
    menu = Menu.new(name,price)
  else menu = Drink.new(name,price,size)
  end
  puts menu.display
end