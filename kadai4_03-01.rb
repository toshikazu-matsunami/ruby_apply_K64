class Bingo_card
  attr_accessor :card

  def initialize
    b = (0o1..15).to_a.sample(5)
    i = (16..30).to_a.sample(5)
    n = (31..45).to_a.sample(5)
    g = (46..60).to_a.sample(5)
    o = (61..75).to_a.sample(5)
    self.card = ''
    (0..4).each do |j|
      [b, i, n, g, o].each do |column|
        self.card += if j != 2 || column != n
                       column[j].to_s + ' |'
                     else
                       '   |'
                     end
      end
      self.card += "\n"
    end
  end

  def display
    puts self.card.to_s
  end
end

card = Bingo_card.new
card.display
