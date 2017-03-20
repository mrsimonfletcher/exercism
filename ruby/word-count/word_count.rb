class Phrase
  def initialize(word)
    @word=word
  end

  def word_count
    @word.
      gsub("\n", "").
      scan(/\w+\'\w|\w+/i).
      each_with_object(Hash.new(0)) { |f, hash| hash[f.downcase] +=1 }
  end
end
