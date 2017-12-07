def poorly_written_ruby_three(*arrays)
  combined_array = arrays.flatten

  def insertion_sort(combined_array)
    sorted_array = [combined_array.pop]

    for val in combined_array
      sorted_combined_index = 0
      while sorted_combined_index < sorted_array.length
        if val <= sorted_array[sorted_combined_index]
          sorted_array.insert(sorted_combined_index, val)
          break
        elsif sorted_combined_index == sorted_array.length - 1
          sorted_array.insert(sorted_combined_index + 1, val)
          break
        end
        sorted_combined_index += 1
      end
    end
    sorted_array
  end
  combined_array.sort
end

r = [1,4,5,[1,2]]
p poorly_written_ruby_one(r)