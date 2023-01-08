class Menu
    attr_accessor :name
    attr_accessor :value

    def initialize (name)

      self.name = name
      self.value = []

      for i in 0..5 do

        if name == "B"
          self.value[i] = rand(1..15)
        elsif name == "I"
          self.value[i] = rand(16..30)
        elsif name == "N"
          self.value[i] = rand(31..45)
        elsif name == "G"
          self.value[i] = rand(46..60)
        else
          self.value[i] = rand(61..75)

        end

      end

    end

  end
  
  b = Menu.new("B")
  i= Menu.new("I")
  n = Menu.new("N")
  g = Menu.new("G")
  o = Menu.new("O")

  n.value[2] = " "
  menus = [b,i,n,g,o]
  
  puts b.name.rjust(3) + "|".rjust(3) + i.name.rjust(3) + "|".rjust(3) + n.name.rjust(3) + "|".rjust(3) + g.name.rjust(3) + "|".rjust(3) + o.name.rjust(3) + "|".rjust(3)
  
  for i in 0..4 do
    menus.each do |menus|
    print menus.value[i].to_s.rjust(3) + "|".rjust(3)
    end
    puts ""

  end