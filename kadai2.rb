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
  
  menus = []
  menu1 = Menu.new(name: 'Pho', price: 30_000)
  menus.push(menu1)
  menu2 = Menu.new(name: 'Bun', price: 35_000)
  menus.push(menu2)
  menu3 = Menu.new(name: 'Banh da', price: 40_000)
  menus.push(menu3)
  
  menus.each do |item|
    item.showItem
  end