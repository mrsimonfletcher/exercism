class Series
  def initialize(string)
    @string=string
  end

  def slices(num_of_chunks)
    raise ArgumentError if num_of_chunks > @string.length

    @string.chars.each_with_object([]).with_index do |(_, array), index|
      chunk = @string[index, num_of_chunks]
      array << chunk if chunk.length >= num_of_chunks
    end
  end
end
