class SumOfMultiples
  def initialize(*numbers)
    @numbers=numbers
  end

  def to(num)
    (0...num).
      select { |i| multiple?(i) }.
      inject(0, :+)
  end

  private
  def multiple?(i)
    @numbers.any? { |number| i % number == 0 }
  end
end
