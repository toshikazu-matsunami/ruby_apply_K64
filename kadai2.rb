class Menu
  attr_accessor :name
  attr_accessor :price
end

menus = [Menu.new, Menu.new, Menu.new]
menus[0].name = 'Phở'
menus[0].price = 30_000
menus[1].name = 'Banh Mi'
menus[1].price = 20_000
menus[2].name = 'Bun Cha'
menus[2].price = 40_000

(1..3).each do |i|
  puts "#{menus[i - 1].name} : #{menus[i - 1].price}"
end
# menu1に対してget_total_priceメソッドを呼び出してください
