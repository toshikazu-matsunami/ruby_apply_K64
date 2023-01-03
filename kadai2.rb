class Menu
 attr_accessor :name
 attr_accessor :price
  # get_total_priceメソッドを定義してください
  def get_total_price(count)
    total_price = 0 
    count.times{
      total_price += price
    }
    
    if count > 2
     total_price -= 10000 * (count/3)
    end
   return "#{self.name} #{total_price}vnd"
  end
end

menus = Array.new
menu1 = Menu.new
menu1.name = "Phở"
menu1.price = 30000

menu2 = Menu.new
menu2.name = "Bánh mì"
menu2.price = 20000

menu3 = Menu.new
menu3.name = "Bún chả"
menu3.price = 50000

menus.push(menu1,menu2,menu3)

menus.each do |item|
  p "#{item.name} #{item.price}"
end
# menu1に対してget_total_priceメソッドを呼び出してください
