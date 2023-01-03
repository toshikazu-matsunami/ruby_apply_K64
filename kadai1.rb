class Menu
 attr_accessor :name
 attr_accessor :price
  # get_total_priceメソッドを定義してください
def get_total_price
    count = 0
    print 'Number of Phở: '
    loop do
      count = gets.chomp
      break if (count === count.to_i.to_s) && (count.to_i > 0)

      print 'Must be an integer bigger than 0: '
    end

    price = @price >= 3 ? @price - 10_000 : @price


  
   return "#{self.name} #{total_price}vnd"
 end
end
total_price = price * count.to_i

menu1 = Menu.new
menu1.name = "Phở"
menu1.price = 30000


# menu1に対してget_total_priceメソッドを呼び出してください
  "#{name} #{total_price}vnd"
  