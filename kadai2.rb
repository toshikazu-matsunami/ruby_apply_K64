class Menu
    attr_accessor :name
    attr_accessor :price

    def initialize (name,price)

      self.name = name
      self.price = price
      
    end

  end
  
  food1 = Menu.new("Cơm thố",50000)
  food2 = Menu.new("Sushi",450000)
  food3 = Menu.new("bò wellington",750000)
  
  menus = []
  menus << dish1
  menus << dish2
  menus << dish3
  
  menus.each do |menus|
    puts "#{menus.name} #{menus.price}vnd "

  end