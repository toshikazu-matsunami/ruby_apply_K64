class Bingo
  attr_accessor :b
  attr_accessor :i
  attr_accessor :n
  attr_accessor :g
  attr_accessor :o

  def bingo_card
    @b = (1..15).to_a.sample(5)
    @i = (16..30).to_a.sample(5)
    @n = (31..45).to_a.sample(5)
    @n[2] = '  '
    @g = (46..60).to_a.sample(5)
    @o = (61..75).to_a.sample(5)
  end

  def print_list
    puts(' B | I  | N  | G  | O ')
    (0..4).each do |e|
      puts "#{@b[e].to_s.rjust(2)} | #{@i[e]} | #{@n[e]} | #{@g[e]} | #{@o[e]}"
    end
  end
end

bingo = Bingo.new
bingo.bingo_card
bingo.print_list
