class Menu
 attr_accessor :name
 attr_accessor :price

  # get_total_priceメソッドを定義してください

  def initialize(name:,price:)
    self.name = name
    self.price = price
  end
  def info
    return "#{self.name} #{self.price}vnd"
  end
end
class Drink<Menu
 attr_accessor :size
  # get_total_priceメソッドを定義してください

  def initialize(name:,price:,size:)
    self.name = name
    self.price = price
    self.size = size
  end
  def info
    return "#{self.name} #{self.price} " "(#{self.size} サイズ)"
  end
end

menu1 = Menu.new(name:"Pho",price:30000)
menu2 = Menu.new(name:"Bun cha",price:40000)
menu3 = Menu.new(name:"Banh mi",price:10000)

drink1 = Drink.new(name:"Tra",price:5000,size:"S")
drink2 = Drink.new(name:"Tra",price:10000,size:"M")


menus = [menu1, menu2, menu3, drink1, drink2]

menus.each{
    |menu|
    puts menu.info
}

# menu1に対してget_total_priceメソッドを呼び出してください