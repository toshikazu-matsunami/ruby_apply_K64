class Bingo
    def initialize
      puts 'B | I | N | G | O'
    end
  
    def generate
      b = (1..15).to_a.sample(5)
      i = (16..30).to_a.sample(5)
      n = (31..45).to_a.sample(5)
      n[2] = 0
      g = (46..60).to_a.sample(5)
      o = (61..75).to_a.sample(5)
  
      5.times do |j|
        if n[j] != 0
          printf "%-2d|%-3d|%-3d|%-3d|%-3d\n", b[j], i[j], n[j], g[j], o[j]
        else
          printf "%-2d|%-3d|   |%-3d|%-3d\n", b[j], i[j], g[j], o[j]
        end
      end
    end
  end
  
  bingo = Bingo.new
  bingo.generate
  