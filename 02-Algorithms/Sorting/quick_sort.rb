def quicksort(array)
	return array if array.length <= 1

	pivot = array.length / 2
	value = array[pivot]
	array.delete_at(pivot)

	lo = []
	hi = []

	array.each do |i|
		if i <= pivot
			lo << i
		else
			hi << i
		end 
	end
	return quicksort(lo) + [pivot] + quicksort(hi)
end


