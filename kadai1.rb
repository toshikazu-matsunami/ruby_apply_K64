class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください
  def get_total_price(count)
    if count > 2
      total_price = count*price - 10_000
    else total_price = count*price
    end  
    return "#{name} #{total_price}vnd"
  end
end

menu1 = Menu.new
menu1.name = 'Phở'
menu1.price = 30_000
# menu1に対してget_total_priceメソッドを呼び出してください
print "count > "
count = gets.chomp.to_i
if count < 0
  puts "ERROR: count > 0"
else
  puts menu1.get_total_price(count)
end