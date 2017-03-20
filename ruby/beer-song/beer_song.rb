class BeerSong
  def verse(start_num)
    run_string_creator(start_num, start_num)
  end

  def verses(start_num, end_num)
    run_string_creator(start_num, end_num)
  end

  private
  def run_string_creator(start_num, end_num)
    (end_num..start_num).map { |f| verse_string(f) }.reverse.join("\n")
  end

  def verse_string(num)
    if num < 1
<<TEXT
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
TEXT
    else
<<TEXT
#{num} #{one_left_response(num, ["bottle", "bottles"])} of beer on the wall, #{num} #{one_left_response(num, ["bottle", "bottles"])} of beer.
Take #{one_left_response(num, ["it", "one"])} down and pass it around, #{how_many_left(num)} #{one_left_response(num-1, ["bottle", "bottles"])} of beer on the wall.
TEXT
    end
  end

  def how_many_left(num)
    num - 1 < 1 ? "no more" : "#{num - 1}"
  end

  def one_left_response(num, arr)
    num == 1 ? arr[0] : arr[1]
  end
end
