class Menu
  attr_accessor :name
  attr_accessor :price
   # get_total_priceメソッドを定義してください

 def is_an_integer(value)
   !!begin
       Integer(value)
     rescue StandardError
       false
     end
 end

 class Menu
   attr_accessor :name, :price


    return "#{self.name} #{total_price}vnd"
  end
   def get_total_price(number)
     if is_an_integer(number) && number.to_s === number.to_i.to_s && number.to_i > 0
       number = number.to_i
       total_price = number >= 3 ? @price * number - (number / 3) * 10_000 : @price * number
       "#{name} #{total_price}vnd"
     else
       '入力は整数でなければなりません'
     end
   end
 end

 menu1 = Menu.new
 menu1.name = "Phở"
 menu1.price = 30000

 # menu1に対してget_total_priceメソッドを呼び出してください

 menu1.name = 'Phở'
 menu1.price = 30_000
 puts menu1.get_total_price('10')
