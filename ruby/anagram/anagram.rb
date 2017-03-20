class Anagram
  def initialize(string)
    @string=string
  end

  def match(array)
    array.select do |word|
      @string.downcase != word.downcase &&
        sorted_string(word) == sorted_string(@string)
    end
  end

  private
  def sorted_string(string)
    string.downcase.chars.sort
  end
end
