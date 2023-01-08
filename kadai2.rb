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

menu1 = Menu.new(name:"Pho",price:30000)
menu2 = Menu.new(name:"Bun cha",price:40000)
menu3 = Menu.new(name:"Banh mi",price:10000)

menus = [menu1, menu2, menu3]

menus.each{
    |menu|
    puts menu.info
}

# menu1に対してget_total_priceメソッドを呼び出してください