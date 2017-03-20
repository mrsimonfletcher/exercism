class Crypto
  def initialize(string)
    @string=string
  end

  def normalize_plaintext
    @string.downcase.gsub(/\W/, '')
  end

  def size
    Math.sqrt(normalize_plaintext.length).ceil
  end

  def plaintext_segments
    normalize_plaintext.
      chars.
      each_slice(size).
      to_a.
      map(&:join)
  end

  def ciphertext
    transposer.join('')
  end

  def normalize_ciphertext
    transposer.join(' ')
  end

  def transposer
    plaintext_segments.map do |seg|
      Array.new(size) { |f| seg[f] || '' }
    end.transpose.map(&:join)
  end
end
