class Menu
 attr_accessor :name
 attr_accessor :price
  # get_total_priceメソッドを定義してください
  def get_total_price(count)
    total_price = count*self.price
    return "#{self.name} #{total_price}vnd"
  end
end

menu1 = Menu.new
menu1.name = "Phở"
menu1.price = 30000

menu2 = Menu.new
menu2.name = "Bún chả"
menu2.price = 40000

menu3 = Menu.new
menu3.name = "Bánh mì"
menu3.price = 20000

menus = [menu1, menu2, menu3]
menus.each do |menu|
  puts menu.get_total_price(1)
end

# menu1に対してget_total_priceメソッドを呼び出してください

