class Menu
    attr_accessor :name
    attr_accessor :price
  
    def initialize(name:, price:)
      self.name = name
      self.price = price
    end
  
    def showItem
      puts "#{name} #{price}vnd"
    end
  end
  
  class Drink < Menu
    attr_accessor :size
    def initialize(name:, price:, size:)
      super(name: name, price: price)
      self.size = size
    end
  
    def showItem
      puts "#{name} #{price} vnd (#{size}サイズ)"
    end
  end
  
  menus = []
  menu1 = Menu.new(name: 'Pho', price: 30_000)
  menus.push(menu1)
  menu2 = Menu.new(name: 'Bun', price: 35_000)
  menus.push(menu2)
  menu3 = Drink.new(name: 'Cocacola', price: 40_000, size: 'S')
  menus.push(menu3)
  
  menus.each do |item|
    item.showItem
  end
  