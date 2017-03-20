class Pangram
  def self.pangram?(phrase)
    phrase.
      gsub(/[^a-z]/i, '').chars.
      inject([]) { |array, f| array << f.downcase }.
      uniq.count == 26
  end
end
