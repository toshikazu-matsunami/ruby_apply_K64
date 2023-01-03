class Bingo
  attr_accessor :card

  def initialize
    @column_b = (1..15).to_a.sample(5)
    @column_i = (16..30).to_a.sample(5)
    @column_n = (31..45).to_a.sample(5)
    @column_g = (46..60).to_a.sample(5)
    @column_o = (61..75).to_a.sample(5)
    @column_n[2] = ' '
  end

  def display
    puts ' B |  I |  N |  G |  O'
    x = 0
    while x < 5
      print format('%2s |', @column_b[x].to_s)
      print format(' %2s |', @column_i[x].to_s)
      print format(' %2s |', @column_n[x].to_s)
      print format(' %2s |', @column_g[x].to_s)
      print format(' %2s', @column_o[x].to_s)
      puts "\n"
      x += 1
    end
  end
  bingo = Bingo.new
  bingo.display
end
