class Menu
    attr_accessor :name
    attr_accessor :price
  
    def get_total_price(count)
      total_price = price * count
      total_price -= 10_000 if count >= 3
  
      puts "#{name} #{total_price}vnd"
    end
  end
  
  menu1 = Menu.new
  menu1.name = 'Phở'
  menu1.price = 30_000
  menu2 = Menu.new
  menu2.name = 'Bún chả'
  menu2.price = 40_000
  menu3 = Menu.new
  menu3.name = 'Bánh mì'
  menu3.price = 20_000
  
  menus = Array[]
  menus = menus.push(menu1,menu2,menu3)
  
  menus.each do |menu|
    puts "#{menu.name} #{menu.price}"
  end
  