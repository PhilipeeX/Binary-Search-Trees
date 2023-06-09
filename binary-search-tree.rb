require 'pry-byebug'
class Node
    def initialize(value)
        @data = value
        @left_child = nil
        @right_child = nil
    end


end

module Comparable
    def self.compare(node_a, node_b)
        if node_a.data >= node_b.data
            node_a
        else
            node_b
        end
    end
end

class Tree
    attr_reader :root

    def initialize(array)
        @array = array
        @root = build_tree
    end

    def build_tree
        @array = sort_array
        i = 0
        while i < @array.length
            @array[i] = Node.new(@array[i])
            i += 1
        end
        @array[@array.length / 2]
    end

    # sort and remove duplicates!
    def sort_array
        @array = @array.sort
        @array.uniq
    end
end