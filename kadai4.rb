class Column
    attr_reader :char, :min, :max
    attr_reader :arr
    def initialize(char, min, max)
        @char = char
        @min = min
        @max = max
        @arr = Array.new(15, false)
        
        count = 0
        while count < 5
            r = rand(min..max)
            if arr[r-min] == false
                count += 1
                arr[r-min] = true
            end
        end
    end
    def get_arr
        ret = []
        for i in 0..14 do
            if arr[i] == true
                ret.push(i+min)
            end
        end
        return ret.shuffle()
    end
end

class Bingo
    attr_reader :cols, :col_nums
    def initialize
        @cols = [
            Column.new('B', 1, 15),
            Column.new('I', 16, 30),
            Column.new('N', 31, 45),
            Column.new('G', 46, 60),
            Column.new('O', 61, 75)
        ]
        @col_nums = []
        # puts cols[0].get_arr
        col_nums.push(cols[0].get_arr)
        col_nums.push(cols[1].get_arr)
        col_nums.push(cols[2].get_arr)
        col_nums.push(cols[3].get_arr)
        col_nums.push(cols[4].get_arr)
    end
    def show
        puts "B\t| I \t| N \t| G \t| O \t"
        for i in 0..1
            for j in 0..3
                # puts "i=#{i}, j=#{j}\n"
                print "#{col_nums[j][i]}\t| "
            end
            print "#{col_nums[4][i]}"
            puts ""
        end
        print "#{col_nums[0][2]}\t| "
        print "#{col_nums[1][2]}\t| "
        print "  \t| "
        print "#{col_nums[3][2]}\t| "
        print "#{col_nums[4][2]}\t\n"
        for i in 3..4
            for j in 0..3
                print "#{col_nums[j][i]}\t| "
            end
            print "#{col_nums[4][i]}"
            puts ""
        end
    end
end

bingo = Bingo.new
bingo.show
