class Hamming
  def self.compute(str1, str2)
    raise ArgumentError if str1.length != str2.length
    counter=0
    str1.split("").each_with_index do |char, index|
      counter += 1 if char != str2[index]
    end
    counter
  end
end
