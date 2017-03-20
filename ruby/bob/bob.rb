class Remark
  def initialize(string)
    @string=string
  end

  def question?
    @string[-1] == "?"
  end

  def yelling?
    @string == @string.upcase && ('A'..'Z').any? { |f| @string.include?(f) }
  end

  def silence?
    @string.gsub(/\s/ , '') == ""
  end
end

class Bob
  def self.hey(string)
    answer Remark.new(string)
  end

  def self.answer(object)
    if object.yelling?
      'Whoa, chill out!'
    elsif object.question?
      'Sure.'
    elsif object.silence?
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end
end
