class Listy
  def initialize(list, x)
    @list = list
    @x = x
  end

  def size
    count = 0
    @list.each do |element|
      count += 1
    end

    return count
  end

  def search
    for i in 0...size
      if @x == @list[i]
        return @list[i].to_s
      end
    end
    return "-1"
  end
end

list = [2, 3, 4, 5, 6, 7, 23, 54]
x = 5

l = Listy.new(list, x)
puts l.search