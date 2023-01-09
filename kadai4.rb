# Bingoクラスを作成する
class Bingo
  # ビンゴカードを生成する
  def initialize
    # コラムB、I、N、G、Oを表す配列を用意する
    @column_b = (1..15).to_a
    @column_i = (16..30).to_a
    @column_n = (31..45).to_a
    @column_g = (46..60).to_a
    @column_o = (61..75).to_a

    # それぞれのコラムからランダムで5つの数字を取り出す
    @card = []
    @card << @column_b.sample(5)
    @card << @column_i.sample(5)
    @card << @column_n.sample(5)
    @card << @column_g.sample(5)
    @card << @column_o.sample(5)
  end

  # ビンゴカードを出力する
  def print_card
    # 真ん中を空(free)にする
    @card[2][2] = 'free'

    # 各コラムを出力する
    puts "|  B  |  I  |  N  |  G  |   O  |"
    @card.transpose.each do |column|
      column.each do |number|
        print " |#{number}|  "
      end
      puts
    end
  end
end

# ビンゴカードを生成する
bingo = Bingo.new

# ビンゴカードを出力する
bingo.print_card
