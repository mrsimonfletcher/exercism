require 'prime'

class PrimeFactors
  def self.for(num)
    numbers = []
    while num > 1
      Prime.each(num) do |prime|
        if num % prime == 0
          numbers << prime
          num /= prime
          break
        end
      end
    end
    numbers
  end
end
