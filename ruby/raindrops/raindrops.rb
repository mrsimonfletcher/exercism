class Raindrops
  KEYS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }.freeze

  def self.convert(num)
    factors = (1..num).
      select { |n|num % n == 0 && [3,5,7].include?(n) }

    if factors.empty?
      num.to_s
    else
      factors.map { |f| Raindrops::KEYS[f] }.join("")
    end
  end
end
