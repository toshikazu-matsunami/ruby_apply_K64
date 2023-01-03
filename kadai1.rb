def is_an_integer(value)
  !!begin
      Integer(value)
    rescue StandardError
      false
    end
end

class Menu
  attr_accessor :name, :price

  def get_total_price(number)
    if is_an_integer(number)
      price = number >= 3 ? @price - 10_000 : @price
      total_price = price * number
      "#{name} #{total_price}vnd"
    else
      '入力は整数でなければなりません'
    end
  end
end

menu1 = Menu.new
menu1.name = 'Phở'
menu1.price = 30_000
puts menu1.get_total_price('q')
