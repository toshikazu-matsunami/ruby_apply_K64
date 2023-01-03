class Bingo
  attr_accessor :b
  attr_accessor :i
  attr_accessor :n
  attr_accessor :g
  attr_accessor :o
  def initialize()
    @b = (1..15).to_a.sample(5)
    @i = (16..30).to_a.sample(5)
    @n = (31..45).to_a.sample(5)
    @g = (46..60).to_a.sample(5)
    @o = (61..75).to_a.sample(5)
    n[2] = " "
  end
  def display
    puts "|  b |  i |  n |  g |  o |"
    for a in 0..4 do   
     puts "| #{b[a].to_s.rjust(2)} | #{i[a].to_s.rjust(2)} | #{n[a].to_s.rjust(2)} | #{g[a].to_s.rjust(2)} | #{o[a].to_s.rjust(2)} |"   
    end
  end
end
b = Bingo.new
b.display