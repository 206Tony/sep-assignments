def poorly_written_ruby_one(*arrays)
  combined_array = arrays.flatten
  sorted_array = [combined_array.pop]

  for val in combined_array
    i = 0
    while i < sorted_array.length
      if val <= sorted_array[i]
        sorted_array.insert(i, val)
        break
      elsif i == sorted_array.length - 1
        sorted_array << val
        break
      end
      i += 1
    end
  end
  sorted_array
end

r = [1,4,5,[1,2]]
p poorly_written_ruby_one(r)