class Bingo
    attr_accessor :b, :i, :n, :g, :o
    def initialize ()
        self.b = (1...15).to_a.sample(5)
        self.i = (16...30).to_a.sample(5)
        self.n = (31...45).to_a.sample(5)
        self.g = (46...60).to_a.sample(5)
        self.o = (61...75).to_a.sample(5)
    end

    def generate_cart()
        puts " B|  I|  N|  G|  O"
        (0..4).each do |i|
          if @b[i] < 10 then
            puts " #{@b[i]}| #{@i[i]}| #{i == 2 ? '  ' : @n[i]}| #{@g[i]}| #{@o[i]}" # display number < 10
          else
            puts "#{@b[i]}| #{@i[i]}| #{i == 2 ? '  ' : @n[i]}| #{@g[i]}| #{@o[i]}"  #display number >= 10
          end
        end
    end
end

    b = Bingo.new
    b.generate_cart