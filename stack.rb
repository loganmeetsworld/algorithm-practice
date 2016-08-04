# Implementation of the ADT of Stack
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
  def push(thing)
    if thing.nil? or full?
      nil
    else
      @top = @top.succ
      @store[@top] = thing
      self
    end
  end

  def look
    @store[@top]
  end

  private

  def full?
    @top == (@size - 1)
  end

  def empty?
    @top = -1
  end
end
