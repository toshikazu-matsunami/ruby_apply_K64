class Menu
    attr_accessor :food
    attr_accessor :price

    def initialize(food, price)
        self.food = food
        self.price = price
    end

    def display
        puts "#{self.food} #{self.price}vnd"
    end
end

menus = []

menu1 = Menu.new("Phở", 30000)
menu2 = Menu.new("Bún chả", 40000)
menu3 = Menu.new("Bánh mì", 20000)

menus.push(menu1, menu2, menu3)

menus.each{
    |e|
    e.display
}