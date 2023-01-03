class Menu
    attr_accessor :name
    attr_accessor :price

    def initialize(name:, price:)
        @name = name
        @price = price
    end

    def get_info
        return "#{self.name} #{price}vnd"
    end
end

class Dink < Menu
    attr_accessor :size
    def initialize(name:, size:, price:)
        super(name:, price:)
        @size = size
    end

    def get_info
        return "#{self.name} (#{size}size) #{price}vnd"
    end
end

menu1 = Menu.new(name: "Phở", price: 30000)
menu2 = Menu.new(name: "BanCha", price: 40000)
menu3 = Menu.new(name: "BanhMi", price: 20000)
dink1 = Dink.new(name: "Tra", size: "S",price: 5000)
dink2 = Dink.new(name: "Tra", size: "M",price: 10000)

menus = []
menus.push(menu1)
menus.push(menu2)
menus.push(menu3)
menus.push(dink1)
menus.push(dink2)

for x in menus
    p x.get_info
end