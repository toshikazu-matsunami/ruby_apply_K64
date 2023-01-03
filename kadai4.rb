class Bingo
  attr_reader :column_b, :column_i, :column_n, :column_g, :column_o
  def initialize
    @column_b = []
    @column_i = []
    @column_n = []
    @column_g = []
    @column_o = []

    5.times {
      @column_b.push(rand(1..15))
      @column_i.push(rand(16..30))
      @column_n.push(rand(31..45))
      @column_g.push(rand(46..60))
      @column_o.push(rand(61..75))
    }
  end
end

bingo = Bingo.new

puts " B| I| N| G| O"

for i in   0..4 do
  if i != 2 
    puts "#{bingo.column_b[i].to_s.rjust(2)}|"+"#{bingo.column_i[i].to_s.rjust(2)}|"+"#{bingo.column_n[i].to_s.rjust(2)}|"+"#{bingo.column_g[i].to_s.rjust(2)}|"+"#{bingo.column_o[i].to_s.rjust(2)}"
  else
     puts "#{bingo.column_b[i].to_s.rjust(2)}|"+"#{bingo.column_i[i].to_s.rjust(2)}|"+"  |"+"#{bingo.column_g[i].to_s.rjust(2)}|"+"#{bingo.column_o[i].to_s.rjust(2)}"
  end
end