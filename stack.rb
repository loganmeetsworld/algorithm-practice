class Stack
  def initialize(size)
    @size = size
    @store = Array.new(size)
    @top = -1
  end
  
  def pop
    if empty? 
      nil
    else
      popped = @store[@top]
      @store[@top] = nil
      @top = @top.pred #returns integer equal to int - 1
      popped
    end
  end
end
