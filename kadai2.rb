class Menu
    attr_accessor :name
    attr_accessor :price
     # get_total_priceメソッドを定義してください
     def initialize (name, price)
       @name = name
       @price = price
       
     end
     def dis_menu()
       puts "#{self.name} #{self.price}vnd"
     end
   end
   
   menu1 = ["Phở", 30000]
   menu2 = ["Bún chả", 40000]
   menu3 = ["Bánh mì", 20000]
   
   menus = [menu1, menu2, menu3]
   
   menus.each do |name, price|
     cook = Menu.new name, price
     cook.dis_menu
   end