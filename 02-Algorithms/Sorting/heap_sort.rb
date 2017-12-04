def heap_sort(array)
	n = array.size
	a = [nil] + array
	(n / 2).downto(1) do |i|
		heap_down(a, i, n)
	end
	while n > 1
		a[1], a[n] = a[n], a[1]
		n -= 1
		heap_down(a, 1, n)
	end
	a.drop(1)
end

def heap_down(a, parent, limit)
	i = a[parent]
	while (child = 2 * parent) <= limit
		child += 1 if child < limit and a[child] < a[child + 1]
		break if i >= a[child]
		a[parent] = a[child]
		parent = child
	end
	a[parent] = i 
end 
