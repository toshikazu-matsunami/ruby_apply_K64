class Menu
  def initialize(name, price)
    @name = name
    @price = price
  end

  # get_total_priceメソッドを定義してください
  def get_total_price(count)
    total_price = @price * count
    total_price -= 10_000 if count >= 3

    puts "#{@name} #{total_price}vnd"
  end
end

# Create a new Pho object with a price of 20000 vnd
menu1 = Menu.new('Phở', 20_000)

# Calculate the total price of 3 servings of Phở
# Output the total price
puts menu1.get_total_price(3)
