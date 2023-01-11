class Bingo
  attr_accessor :b
  attr_accessor :i
  attr_accessor :n
  attr_accessor :g
  attr_accessor :o
  def initialize
    @b = 5.times.map{rand(1..15)}
    @i = 5.times.map{rand(16..30)}
    @n = 5.times.map{rand(31..45)}
    @n[2] ="  "
    @g = 5.times.map{rand(46..60)}
    @o = 5.times.map{rand(61..75)}
  end
  def print_bingo_card
    puts " B | I  | N  | G  | O"
    (0..4).each do |x|
      puts "#{b[x]} | #{i[x]} | #{n[x]} | #{g[x]} | #{o[x]}"
    end
  end
end
bingo = Bingo.new
bingo.print_bingo_card