
class Bingo
    attr_accessor :b 
   
    attr_accessor  :i 
   
    attr_accessor  :n 

    attr_accessor  :g 
   
    attr_accessor  :o 

    def initialize 
    @b = (1..15).to_a.sample(5)
   
    @i = (16..30).to_a.sample(5)
   
    @n = (31..45).to_a.sample(5)
    n[2] = nil
    @g = (46..60).to_a.sample(5)
   
    @o = (61..75).to_a.sample(5)
    end

   def generate_card
    hello = "BINGO"
    5.times do |index|
        print "#{hello[index].rjust(3)}" + " | " 
    end
    print "\n"
    5.times do |index|
        [b,i,n,g,o].each do  |arr|
            print "#{arr[index].to_s.rjust(3)}" + " | "
        end
        print "\n"
    end
   end
end

bingo_card = Bingo.new
bingo_card.generate_card

