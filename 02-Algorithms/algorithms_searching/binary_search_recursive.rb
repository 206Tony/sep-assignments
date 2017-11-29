def binary_recursive_search(collection, value)
	first = 0
	last = collection.length-1

	if collection.length == 0
		return value
	else
		mid = (first + last)/2
		if value == collection[mid]
			return value
		else
			if collection[i] < value
				return binary_recursive_search(collection[mid+1, last], value)
			else
				return binary_recursive_search(collection[first, mid-1], value)
			end
		end
	end
end

