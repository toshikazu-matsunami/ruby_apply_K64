class Bingo
  def initialize
    @column_b = (1..15).to_a.sample(5)
    @column_i = (16..30).to_a.sample(5)
    @column_n = (31..45).to_a.sample(5)
    @column_g = (46..60).to_a.sample(5)
    @column_o = (61..75).to_a.sample(5)
  end

  def display
    rows = [@column_b, @column_i, @column_n, @column_g, @column_o]
    puts '  B |  I |  N |  G |  O '
    5.times do |i|
      if rows[0][i] < 10
        puts "  #{rows[0][i]} | #{rows[1][i]} | #{i == 2 ? '  ' : rows[2][i]} | #{rows[3][i]} | #{rows[4][i]} "
      else
        puts " #{rows[0][i]} | #{rows[1][i]} | #{i == 2 ? '  ' : rows[2][i]} | #{rows[3][i]} | #{rows[4][i]} "
      end
    end
  end
end

# Create a new Bingo object
bingo = Bingo.new

# Display the Bingo card
bingo.display