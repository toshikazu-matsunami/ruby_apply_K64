class Bingo
    def generate_card
        b = (1..15).to_a.sample(5)
        i = (16..30).to_a.sample(5)
        n = (31..45).to_a.sample(5)
        n[2] = ""
        g = (46..60).to_a.sample(5)
        o = (61..75).to_a.sample(5)

        (0...5).to_a.each do |bingo|
            row = Array.new
            [b, i, n, g, o].each do |arr|
                row.append(arr[bingo].to_s.rjust(2))
            end
            puts row.join(" | ")
        end
    end
end

bingo = Bingo.new
bingo.generate_card