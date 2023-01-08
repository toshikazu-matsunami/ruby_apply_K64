class Menu
    attr_accessor :name
    attr_accessor :price

    def initialize (name,price)

      self.name = name
      self.price = price

    end

    def infor
      puts "#{self.name} #{self.price}vnd "

    end

  end
  
  class Drink < Menu
    attr_accessor :size

    def initialize (name,price,size)
      super(name,price)
      self.size = size

    end

    def infor
      puts "#{self.name} #{self.price} vnd (#{self.size}サイズ)"
    end

  end
  
  food1 = Menu.new("Cơm thố",50000)
  food2 = Menu.new("Sushi",450000)
  food3 = Menu.new("bò wellington",750000)
  drink1 = Drink.new("Cafe bạc siue",35000,"L")
  drink2 = Drink.new("Trà sữa",30000,"M")
    
  menus = [dfood1,dfood2,food3,drink1,drink2]
  
  menus.each do |menus|
    menus.infor
  end