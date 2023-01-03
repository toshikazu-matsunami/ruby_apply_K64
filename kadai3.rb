class Menu
  @name
  @price
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
    return "#{@name} #{total_price}vnd"
 end
end

class Drink < Menu
  def initialize(name:, price:, size:)
    super(name: name, price: price)
    @size = size
  end
  def get_total_price(count)
    total_price = @price * count
    if count >= 3
      total_price-= 10000
    end
    return "#{@name} #{total_price}vnd (#{@size}サイズ)"
  end
end

menu1 = Menu.new(name: "Phở", price: 30000)
menu2 = Menu.new(name: "Bún chả", price: 40000)
menu3 = Menu.new(name: "Bánh mì", price: 20000)

drink1 = Drink.new(name: "Trà", price: 5000, size: "S")
drink2 = Drink.new(name: "Trà", price: 10000, size: "M")

menus = [menu1, menu2, menu3, drink1, drink2]

menus.each do |menu|
  puts menu.get_total_price(1)
end