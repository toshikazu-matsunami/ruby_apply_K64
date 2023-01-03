class Bingo
  attr_accessor :name
  attr_accessor :list 
  def initialize
    @name = []
    @list = []
  end
  def generate_card (name, list)
    @name.push(name)
    @list.push(list)
  end
  def display 
    (0..4).each do |i|
      print @name[i] + " |"
    end
    puts
    (0..4).each do |i|
      (0..4).each do |j|
        print @list[j][i].to_s.rjust(2) + "|"
      end
      puts
    end
  end
end

columnB = (1..15).to_a.sample(5) 
columnI = (16..30).to_a.sample(5) 
columnN = (31..45).to_a.sample(5) 
columnN[2] = ""
columnG = (46..60).to_a.sample(5) 
columnO = (61..75).to_a.sample(5) 

card = Bingo.new
card.generate_card("B", columnB)
card.generate_card("I", columnI)
card.generate_card("N", columnN)
card.generate_card("G", columnG)
card.generate_card("O", columnO)

card.display