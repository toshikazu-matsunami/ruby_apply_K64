class Menu
    attr_accessor :name
    attr_accessor :price

    def initialize (name,price)

      self.name = name
      self.price = price
      
    end

  end
  
  dish1 = Menu.new("Bún riêu",35000)
  dish2 = Menu.new("Cơm gà",45000)
  dish3 = Menu.new("Cơm rang",35000)
  
  menus = []
  menus << dish1
  menus << dish2
  menus << dish3
  
  menus.each do |menus|
    puts "#{menus.name} #{menus.price}vnd "

  end