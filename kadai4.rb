class Bingo
    attr_accessor :b
    attr_accessor :i
    attr_accessor :n
    attr_accessor :g
    attr_accessor :o
    def initialize()
        puts ("--------------------------")
        puts ("|  B |  I |  N |  G |  O |")
        @b = (1..15).to_a.sample(5)
        @i = (16..30).to_a.sample(5)
        @n = (31..45).to_a.sample(5)
        @n[2] = "  "
        @g = (46..60).to_a.sample(5)
        @o = (61..75).to_a.sample(5)
    end
    
    def each()
        5.times do |j|
            if b[j]<10
                puts "|  #{b[j]} | #{i[j]} | #{n[j]} | #{g[j]} | #{o[j]} |"
            else
                puts "| #{b[j]} | #{i[j]} | #{n[j]} | #{g[j]} | #{o[j]} |"
            end
            # puts "|#{b[j]}|#{i[j]}|#{n[j]}|#{g[j]}|#{o[j]}|"
        end
    end 
end

bingo = Bingo.new
bingo.each
puts ("--------------------------")