class MyQueue 
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @queue = Array.new
    @head = @queue[0]
  end

  def enqueue(element)
    @queue.unshift(element)
    @head = @queue[0]
    @tail = @queue.last
  end

  def dequeue
    @queue.slice!(@queue.lenght - 1)
    @tails = @queue.last
  end

  def empty?
    @queue.length == 0
  end
end