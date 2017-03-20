class Binary
  def self.to_decimal(str)
    raise ArgumentError unless str =~ /^\b[01]+\b$/

    str.chars.reverse.each_with_index.inject(0) do |acc, (el, index)|
      acc += 2**index if el == '1'
      acc
    end
  end
end
