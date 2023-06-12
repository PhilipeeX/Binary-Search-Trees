require 'pry-byebug'
# TASKS
# 1- Build a Node class. It should have an attribute for the data it stores as well as its left and right children.
# As a bonus, try including the Comparable module and compare nodes using their data attribute.

# 2- Build a Tree class which accepts an array when initialized. The Tree class should have a root attribute which uses
# the return value of #build_tree which you’ll write next.

# 3- Write a #build_tree method which takes an array of data (e.g. [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])
# and turns it into a balanced binary tree full of Node objects appropriately placed
# (don’t forget to sort and remove duplicates!). The #build_tree method should return the level-0 root node.

# Cria um node recebendo seu valor e armazena-o em @data
class Node
  attr_accessor :data, :left, :right

  def initialize(value)
    @data = value
  end

  def define_left(treeleft)
    @left = treeleft
  end

  def define_right(treeright)
    @right = treeright
  end
end

# Recebe 2 nodes e compara qual tem maior valor ou se são iguais
module Comparable
  def self.compare(node_a, node_b)
    if node_a.data >= node_b.data
      node_a
    else
      node_b
    end
  end
end

# Cria uma arvore identada
class Tree
  attr_accessor :root, :data

  def initialize(array)
    binding.pry
    @data = array.sort.uniq
    @root = build_tree(data)
  end

  def build_tree(array)
    return nil if array.empty?

    mid = (array.size - 1) / 2

    root = Tree.new(array[mid])

    root.define_left(build_tree(array[0...mid]))
    root.define_right(build_tree(array[(mid + 1)..]))

    root
  end
end
