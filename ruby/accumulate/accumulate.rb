class Array
  def accumulate(&block)
    map { |f| block.call(f) }
  end
end
