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
    def initialize(array)
        @array = array
    end

    def build_tree
        @array = sort_array
    end

    # sort and remove duplicates!
    def sort_array
        @array = @array.sort
        @array.uniq!
    end
end
