module MyEnumerable
  def all?
    each { |e| return false unless yield(e) } if block_given?
    true
  end

  def any?
    each { |e| return true if yield(e) } if block_given?
    false
  end

  def filter
    result = []
    each { |x| result << x if yield(x) }
    result
  end
end
