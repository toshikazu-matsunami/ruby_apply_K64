class BingoBoard
  attr_accessor :bingo_board, :letter_pick, :number_pick, :letters
  def initialize
    @letters=["B","I","N","G","O"]
    @bingo_board = [5.times.map{rand(1..15)}, 5.times.map{rand(16..30)}, 5.times.map{rand(31..45)}, 5.times.map{rand(46..60)}, 5.times.map{rand(61..75)}].transpose
    bingo_board[2][2] = "X"
    puts letters.map { |i| i.to_s.rjust(4) }.join
    puts bingo_board.map { |a| a.map { |i| i.to_s.rjust(4) }.join }
    @bingo = false
  end

  def get_row(row)
    bingo_board[row]
  end

  def pick # randomly picks a letter and number
    @letter_pick = letters.sample
    @number_pick = rand(1..15) if letter_pick == "B"
    @number_pick = rand(16..30) if letter_pick == "I"
    @number_pick = rand(31..45) if letter_pick == "N"
    @number_pick = rand(46..60) if letter_pick == "G"
    @number_pick = rand(61..75) if letter_pick == "O"
    puts "#{letter_pick} #{number_pick}"
  end

  def check # checks for the number in the respective column
    bingo_board.collect! { |rows| rows.collect! { |coordinate|
      coordinate == number_pick ? (coordinate = 'X'; coordinate) : coordinate } }
  end

  def display_column(letter)
    letter.upcase == "B" ? (puts "B"; bingo_board.map { |col| puts col[0] }) :
    letter.upcase == "I" ? (puts "I"; bingo_board.map { |col| puts col[1] }) :
    letter.upcase == "N" ? (puts "N"; bingo_board.map { |col| puts col[2] }) :
    letter.upcase == "G" ? (puts "G"; bingo_board.map { |col| puts col[3] }) :
    letter.upcase == "O" ? (puts "O"; bingo_board.map { |col| puts col[4] }) :
    (puts "Please only use valid columns.")
  end # display_column

  def display_board
    puts letters.map { |i| i.to_s.rjust(4) }.join
    puts bingo_board.map { |a| a.map { |i| i.to_s.rjust(4) }.join }
  end

  def you_win_hor
    bingo_board.map { |rows| rows == ["X", "X", "X", "X", "X"] ? (@bingo = true; puts "BINGO!") : rows }
  end

  def you_win_ver
    bingo_board.transpose.map { |columns| columns == ["X", "X", "X", "X", "X"] ? (@bingo = true; puts "BINGO!") : columns }
  end

  def you_win_diag
    diag_rarray = [bingo_board[0][0], bingo_board[1][1], bingo_board[2][2], bingo_board[3][3], bingo_board[4][4]]
    diag_larray = [bingo_board[0][4], bingo_board[1][3], bingo_board[2][2], bingo_board[3][1], bingo_board[4][0]]
    if diag_rarray.eql?(["X", "X", "X", "X", "X"])
      @bingo = true; puts "BINGO!"
    elsif diag_larray.eql?(["X", "X", "X", "X", "X"])
      @bingo = true; puts "BINGO!"
    end
  end

  def try_again
    keep_trying = ["Sorry, let's try another number!", "You don't have any matching numbers. Let's try again!", "Oops! Guess we should pick another one.", "I'm sure the next one will be a match!", "Keep trying!"]
    p keep_trying.sample
  end

  def good_job
    nice_work = ["Awesome, you have that number!", "Nice work, you're making progress!", "Good job, you only need a few more numbers!", "Looking good, you got one!"]
    p nice_work.sample
  end

  def have_number?
    @have_number = false
    @bingo_board.map { |row| row.include?(@number_pick) ? @have_number = true : false}
  end

  def play
    puts "Let\'s play some BINGO!"
    until @bingo == true do
      you_win_diag; you_win_hor; you_win_ver
      break if @bingo == true
      print "Drawing"
      10.times { print "."; sleep 0.1 }
      puts "  "; pick; sleep 0.1; have_number?
      @have_number == true ? (check; good_job; sleep 0.1; puts "Here is your updated bingo card:"; display_board; sleep 0.2) : (try_again; sleep 0.1)
    end # until
  end # play
end # class

# DRIVER TESTS GO BELOW THIS LINE
my_board = BingoBoard.new
my_board.play