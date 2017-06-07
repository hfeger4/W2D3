class TowersOfHanoi

  attr_accessor :towers

  def initialize
    @towers = [[3, 2, 1], [], []]
  end


    def play
      until won?
        render
        get_user_input
      end
      puts "You win! Congrats!"
    end

    def won?
      if @towers == [[],[],[3,2,1]] || @towers == [[],[3,2,1],[]]
        return true
      end
      false
    end

    def get_user_input
      puts "Enter the tower you want to take from: "
      from_tower = gets.chomp.to_i
      puts "Enter the tower you want to go to: "
      to_tower = gets.chomp.to_i

      if valid_move?(from_tower,to_tower)
        move(from_tower,to_tower)
      else
        puts "Invalid move!"
        get_user_input
      end

    end

    def valid_move?(from_tower,to_tower)
      if @towers[from_tower].empty?
        return false
      elsif @towers[to_tower].empty?
        return true
      end
      @towers[from_tower].last < @towers[to_tower].last
    end

    def move(from_tower,to_tower)
      @towers[to_tower] << @towers[from_tower].pop
    end

    def render
      puts "Tower 0: " + @towers[0].join(" ")
      puts "Tower 1: " + @towers[1].join(" ")
      puts "Tower 2: " + @towers[2].join(" ")
    end

  end

  # a = TowersOfHanoi.new
  # a.play
