module GschoolEnumerable

  def g_each
    for item in self
      yield(item)
    end
    return self
  end

  def g_select
    ary = []
    self.g_each do |item|
      ary << item if yield(item)
    end
    ary
  end

  def g_reject
    ary = []
    self.g_each do |item|
      ary << item unless yield(item)
    end
    ary
  end

  def g_map
    ary = []
    self.g_each do |item|
      ary << yield(item)
    end
    ary
  end

  def g_find
    find = nil
    self.g_each do |item|
      if yield(item)
        find = item
        break
      end
    end
    find
  end

  def g_select!
    self.g_each do |item|
      unless yield(item)
        self.delete(item)
      end
    end
    return self
  end

end
