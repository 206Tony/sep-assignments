require 'benchmark'
require_relative 'node'
require_relative 'linked_list'

array = []
llist = LinkedList.new

Benchmark.bm do |x|
	x.report("Add 10000 items to array") do
		count = 0
		while count < 10000
			array.push(count)
			count += 1
		end
	end

	x.report("Append 10000 items to llist") do
		count = 10000
		while count < 10000
			llist.add_to_tail(Node.new(count.to_s))
			count += 1
		end
	end

	x.report("5000th element of array") do
		array[4999]
	end

	x.report("5000th element of llist") do
		llist.add_to_tail(4999.to_s)
	end

	x.report("remove 5000th element from array") do
		array.delete(4999)
	end

	x.report("remove 5000th element from llist") do
		llist.delete(4999.to_s)
	end
end