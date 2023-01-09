class Bingo 
    # attr_accessor :b
    # attr_accessor :i
    # attr_accessor :n
    # attr_accessor :g
    # attr_accessor :o
  
    def initialize
      @b = (1..15).to_a.sample(5)
      @i = (16..30).to_a.sample(5)
      @n = (31..45).to_a.sample(5)
      @n[2] = ""
      @g = (46..60).to_a.sample(5)
      @o = (61..75).to_a.sample(5)
    end
  
    def generate_card
      puts " B| I| N| G| O|"
      # self.b = (1..15).to_a.sample(5)
      # self.i = (16..30).to_a.sample(5)
      # self.n = (31..45).to_a.sample(5)
      # self.n[2] = ""
      # self.g = (46..60).to_a.sample(5)
      # self.o = (61..75).to_a.sample(5)
      5.times do |j|
        [@b,@i,@n,@g,@o].each do |column|
          # card += column[j].to_s.rjust(2) + "|"
          print "#{column[j].to_s.rjust(2)}|"
        end
        # card[-3..-1] = "\n"
        print "\n"
      end
    end
  end
  
  bingo = Bingo.new
  puts bingo.generate_card
  