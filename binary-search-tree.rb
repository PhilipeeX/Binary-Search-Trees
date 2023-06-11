require 'pry-byebug'
# TASKS
# 1- Build a Node class. It should have an attribute for the data it stores as well as its left and right children.
# As a bonus, try including the Comparable module and compare nodes using their data attribute.

# 2- Build a Tree class which accepts an array when initialized. The Tree class should have a root attribute which uses
# the return value of #build_tree which you’ll write next.

# 3- Write a #build_tree method which takes an array of data (e.g. [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])
# and turns it into a balanced binary tree full of Node objects appropriately placed
# (don’t forget to sort and remove duplicates!). The #build_tree method should return the level-0 root node.

# Cria um node recebendo seu valor e armazenando em @data
class Node
  attr_reader :data

  def initialize(value)
    @data = value
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

  # Sort and remove duplicates!
  def sort_array
    @array = @array.sort
    @array.uniq
  end
end
