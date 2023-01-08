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
   
   class Drink < Menu
     attr_accessor :size
     def initialize (name, price,size)
       super(name,price)
       @size = size
     end
     def dis_menu()
       puts "#{self.name} #{self.price} vnd (#{self.size} size)"
     end
   end
   menu1 = ["Phở", 30000]
   menu2 = ["Bún chả", 40000]
   menu3 = ["Bánh mì", 20000]
   menu4 = ["Trà", 5000,"S"]
   menu5 = ["Trà", 10000,"M"]
   
   menus = [menu1, menu2, menu3]
   
   menus.each do |name, price|
     cook = Menu.new name, price
     cook.dis_menu
   end
   
   menus2 = [menu4,menu5]
   menus2.each do |name, price,size|
     drink = Drink.new name, price,size
     drink.dis_menu
   end