require 'benchmark'
require_relative 'binary_tree/binary_search_tree'
require_relative 'min_binary_heap/min_binary_heap'

rootTree = Node.new("tree root", 80)
rootHeap = Node.new("heap root", 1)
search_tree = BinarySearchTree.new(rootTree)
min_heap = MinBinaryHeap.new(rootHeap)

n = 1000

Benchmark.bm do |bm|
	bm.report("tree insert") do
		for i in 1..n do
			new_node = Node.new("tree", i)
			search_tree.insert(rootTree, new_node)
		end
	end

	bm.report("heap insert") do
		for i in 2..n do
			new_node = Node.new("tree", i)
			search_tree.insert(rootTree, new_node)
		end
	end

	target_node = Node.new("target", 50000)
	search_tree.insert(rootTree, target_node)
	min_heap.insert(rootHeap, target_node)

	bm.report("tree find") do
		search_tree.find(rootHeap, 50000)
	end

	bm.report("tree delete") do 
		search_tree.delete(RootTree, 50000)
	end

	bm.report("heap delete") do
		min_heap.delete(rootHeap, 50000)
	end
end