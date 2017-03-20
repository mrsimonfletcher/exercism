class Sieve
  def initialize(number)
    @number=number
  end

  def primes
    (2..@number).reject{ |num| is_not_number_prime?(num) }
  end

  def is_not_number_prime?(num)
    (2...num).any?{ |f| num % f == 0 }
  end
end
