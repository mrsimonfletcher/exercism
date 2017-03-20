class Array
  def accumulate(&block)
    arr = []
    each { |f| arr << block.call(f) }
    arr
  end
end
