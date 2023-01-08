class Bingo
    def initialize
        @b = (1..15).to_a.sample(5)
        @i = (16..30).to_a.sample(5)
        @n = (31..45).to_a.sample(5)
        @g = (46..60).to_a.sample(5)
        @o = (61..75).to_a.sample(5)

        @b.insert(0, 'B')
        @i.insert(0, 'I')
        @n.insert(0, 'N')
        @g.insert(0, 'G')
        @o.insert(0, 'O')
    end

    def print_table
        6.times do |i|
            [@b, @i, @n, @g, @o].each_with_index do |col, index|
                if index > 0
                    print ' | '
                end
                if i != 3 || index != 2
                    print col[i].to_s.rjust(2)
                else
                    print '  '
                end
            end
            puts
        end
    end
end

bingo = Bingo.new

bingo.print_table