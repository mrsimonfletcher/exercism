class RunLengthEncoding
  def self.encode(input)
    input.chars.chunk { |char| char }.inject("") do |str, (char, arr)|
      if arr.length > 1
        str << arr.length.to_s + char
      else
        str << char
      end
    end
  end

  def self.decode(input)
    input.scan(/(\d+)?(.)/).inject("") do |str, (count, char)|
      how_many_times = count ? count.to_i : 1
      str << char * how_many_times
    end
  end
end
