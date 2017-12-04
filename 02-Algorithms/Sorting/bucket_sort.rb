def bucket_sort(array, bucket_size = 50)
	if array.empty?
		return 
	end

	min_value = array.min
	max_value = array.max

	count = ((max_value - min_value) / bucket_size).floor + 1
	buckets = Array.new(count)
	(0..buckets.length - 1).each do |i|
		buckets[i] = []
	end

	(0..array.length - 1).each do |i|
		buckets[((array[i] - min_value) / bucket_size).floor].push(array[i])
	end

	array.clear
	(0..buckets.length - 1).each do |i|
		buckets[i]
		buckets[i].each do |value|
			array.push(value)
		end
	end
end