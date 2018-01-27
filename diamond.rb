class Diamond
  attr_reader :letters, :height, :rows, :space
  def initialize(letter)
    @letters = [*?A..letter]
    @height = letters.count
    @rows = (1..height)
    @space = -1
    print_top_half
    print_bottom_half
  end

  def print_top_half
    @rows.zip(@letters).each do |row, letter|
      print ' ' * (@height - row)
      if row == 1
        puts letter
      else
        @space += 2
        puts letter + (' ' * @space) + letter
      end
    end
  end

  def print_bottom_half
    @rows.zip(@letters.reverse).each do |row, letter|
      print ' ' * (row - 1)
      if rows.last == row
        puts letter
      elsif row != 1
        @space -= 2
        puts letter + (' ' * @space) + letter
      end
    end
  end

end

Diamond.new('C')
Diamond.new('H')
Diamond.new('P')
