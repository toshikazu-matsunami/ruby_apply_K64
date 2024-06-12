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
   
menu1 = Menu.new(name: "Phở", price: 30000)
menu2 = Menu.new(name: "BanCha", price: 40000)
menu3 = Menu.new(name: "BanhMi", price: 20000)

menus = []
menus.push(menu1)
menus.push(menu2)
menus.push(menu3)

for x in menus
    p x.get_info
end