class PhoneNumber
  BAD_NUMBER = '0000000000'

  def initialize(number)
    @number=number
  end

  def number
    bad_number? || @number =~ /[a-z]/ ? BAD_NUMBER : format_number
  end

  def area_code
    format_number[0...3]
  end

  def to_s
    "(#{format_number[0, 3]}) #{format_number[3, 3]}-#{format_number[6, 4]}"
  end

  private
  def bad_number?
    format_number.length < 10 ||
    format_number.length > 11 ||
    format_number.length == 11 && format_number[0] != "1"
  end

  def format_number
    @formatted_number ||= run_formatter(@number)
  end

  def run_formatter(num)
    new_number = num.gsub(/\D/,'')
    if new_number.length == 11 && new_number[0] == "1"
      new_number[1..-1]
    else
      new_number
    end
  end
end
