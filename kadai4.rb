class Bingo_card
    attr_accessor :card

    def initialize
        b = (1..15).to_a.sample(5)
        i = (16..30).to_a.sample(5)
        n = (31..45).to_a.sample(5)
        g = (46..60).to_a.sample(5)
        o = (61..75).to_a.sample(5)
        self.card = ""
        for j in (0..4) do
            [b,i,n,g,o].each{
                |column|
                if j!=2 || column!=n
                    if column[j].to_i < 10
                        self.card += column[j].to_s + " |"
                    else
                        self.card += column[j].to_s + "|"
                    end
                else
                    self.card += "  |"
                end
            }
            self.card += "\n"
        end
    end

    def display
        puts "#{self.card}"
    end
end


card = Bingo_card.new
card.display




