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
  
  dish1 = Menu.new("Bún riêu",35000)
  dish2 = Menu.new("Cơm gà",45000)
  dish3 = Menu.new("Cơm rang",35000)
  drink1 = Drink.new("Trà Chanh",15000,"M")
  drink2 = Drink.new("Cafe",30000,"S")
    
  menus = [dish1,dish2,dish3,drink1,drink2]
  
  menus.each do |menus|
    menus.infor
  end