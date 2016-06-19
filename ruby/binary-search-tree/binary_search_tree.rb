class Bst
  attr_accessor :data , :left, :right
  
  def initialize(num)
    @data = num
    @left = nil
    @right = nil
  end

  def insert(node)
    new_node = Bst.new(node)
    if(@data < node)
      if right == nil
        @right = new_node
      else
        @right.insert(node)
      end
    elsif left == nil
      @left = new_node
    else
      @left.insert(node)
    end
  end

  def each(&block)
    @left.each(&block) if @left
    yield(@data)
    @right.each(&block) if @right 
  end
end