class Menu
    attr_accessor :name
    attr_accessor :price
     # get_total_priceメソッドを定義してください

     def get_total_price(amount)

       if amount >= 3
         total_price = self.price * amount - 10000
       else 
        total_price = self.price * amount
       end
     
      return "#{self.name} #{total_price}vnd"

    end
    
   end
   
   menu1 = Menu.new
   menu1.name = "Mỳ ý"
   menu1.price = 30000
   
   # menu1に対してget_total_priceメソッドを呼び出してください
   puts  menu1.get_total_price(2)