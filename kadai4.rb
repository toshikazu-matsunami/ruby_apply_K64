class Bingo
    def initialize ()
        @b = (1...15).to_a.sample(5)
        @i = (16...30).to_a.sample(5)
        @n = (31...45).to_a.sample(5)
        @g = (46...60).to_a.sample(5)
        @o = (61...75).to_a.sample(5)
    end

    def generate_cart()
        # できない
    end
end

    b = Bingo.new
    b.generate_cart