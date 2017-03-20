class Prime
  def self.nth(num)
    raise ArgumentError if num < 1
    prime_numbers=[]
    i=2
    begin
      if self.is_prime?(i)
        prime_numbers << i
      end
      i += 1
    end while prime_numbers.length < num

    prime_numbers.last
  end

  def self.is_prime?(num)
    Math.sqrt(num).floor.downto(2).each do |i|
      return false if num % i == 0
    end
    true
  end
end
