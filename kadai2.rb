class Menu
 attr_accessor :name
 attr_accessor :price
  def initialize(name:, price:)
    @name = name
    @price = price
  end
  # get_total_priceメソッドを定義してください
  def get_total_price(count)
    total_price = @price * count
    if count >= 3
      total_price-= 10000
    end
   return "#{self.name} #{total_price}vnd"
 end
end

menu1 = Menu.new(name: "Phở", price: 30000)
menu2 = Menu.new(name: "Bún chả", price: 40000)
menu3 = Menu.new(name: "Bánh mì", price: 20000)

menus = [menu1, menu2, menu3]

menus.each do |menu|
  puts menu.get_total_price(1)
end

