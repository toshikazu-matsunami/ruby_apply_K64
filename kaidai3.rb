class Menu
    attr_accessor :name
    attr_accessor :price
    def initialize(name:, price:)
      self.name = name
      self.price = price
    end
  end
  class Drink < Menu
    attr_accessor :size
    def initialize(name:, price:, size:)
      super(name: name, price: price)
      self.size = size
    end
  end
  
  menu1 = Menu.new(name:"Phở", price:30000)
  menu2 = Menu.new(name:'Bún chả', price:40000)
  menu3 = Menu.new(name:'Bánh mì', price:20000)
  drink1 = Drink.new(name:'Trà', price:5000, size:'Sサイズ')
  drink2 = Drink.new(name:'Trà', price:10000, size:'Mサイズ')
  
  menus = [menu1, menu2, menu3, drink1, drink2] 
  drinks = [drink1, drink2]
  
  menus.each do |i|
    print "#{i.name} #{i.price}vnd "
    if i.is_a? Drink
      print "#{i.size}"
    end
    print "\n"
  end
  
  # drinks.each do |i|
  #   puts "#{i.name} #{i.price}vnd #{i.size}"
  # end