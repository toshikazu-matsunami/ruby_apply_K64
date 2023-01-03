class Bingo


  def generate_card()
    b = (1..15).to_a.sample(5)
    i = (16..30).to_a.sample(5)
    n = (31..45).to_a.sample(5)
    g = (46..60).to_a.sample(5)
    o = (61..75).to_a.sample(5)
    n[2] = ""
    ["B", "I", "N", "G", "O"].each do |column| print "|" + column.rjust(2) + "|"
    end
    puts
    5.times do |j|
      [b,i,n,g,o].each do |column|
      print "|" + column[j].to_s.rjust(2) + "|"
      end
      puts
    end
  end
end

bingo1 = Bingo.new
bingo1.generate_card