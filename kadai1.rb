class Menu
  attr_accessor :name, :price

  def get_total_price
    count = 0
    print 'Number of Phở: '
    loop do
      count = gets.chomp
      break if (count === count.to_i.to_s) && (count.to_i > 0)

      print 'Must be an integer bigger than 0: '
    end

    price = @price >= 3 ? @price - 10_000 : @price

    total_price = price * count.to_i

    "#{name} #{total_price}vnd"
  end
end

menu1 = Menu.new
menu1.name = 'Phở'
menu1.price = 30_000
puts menu1.get_total_price
