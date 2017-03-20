class Squares
  def initialize(num)
    @num=num
  end

  def square_of_sum
    (1..@num).inject(0){ |sum,x| sum + x }**2
  end

  def sum_of_squares
    (1..@num).map{ |f| f**2 }.inject(0){ |sum,x| sum + x }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
