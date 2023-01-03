class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください
  def get_total_price(count)
    "#{name} #{price * count}vnd"
  end
end

menu1 = Menu.new
menu1.name = 'Phở'
menu1.price = 30_000
puts menu1.get_total_price(2)
# menu1に対してget_total_priceメソッドを呼び出してください
