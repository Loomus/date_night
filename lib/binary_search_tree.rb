require 'pry'

class BinarySearchTree
  def initialize
    @head = nil
  end

  def insert(value, title)
    depth = 0
    if @head
      depth += 1
      parent = @head
      if value > parent.value
        until parent.right.nil?
          parent = parent.right
          depth += 1
        end
        if value > parent.value
          parent.right = Node.new(value, title)
        else
          parent.left = Node.new(value, title)
        end
        depth
      elsif value < parent.value
        until parent.left.nil?
          parent = parent.left
          depth += 1
        end
        if value > parent.value
          parent.right = Node.new(value, title)
        else
          parent.left = Node.new(value, title)
        end
        depth
      end
    else
      @head = Node.new(value, title)
      depth
    end
  end

  def include?(value)
    parent = @head
    until parent.value == value
      if value < parent.value
        parent = parent.left
      else
        parent = parent.right
      end
      break if parent.right.nil? && parent.left.nil?
    end
    parent.value == value
  end
end
