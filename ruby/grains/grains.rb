class Grains
  def self.square(num)
    raise ArgumentError if num <= 0 || num > 64
    self.chess_board_grains(num).last
  end

  def self.total
    self.chess_board_grains.inject(0, :+)
  end

  def self.chess_board_grains(num=64)
    (2..num).each_with_object(Array.new(1, 1)) do |i, array|
      array << 2 * array.last
    end
  end
end
