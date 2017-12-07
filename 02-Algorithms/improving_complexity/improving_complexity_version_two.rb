def poorly_written_ruby_two(*arrays)
  combined_array = arrays.flatten
   
  def mergesort(array)
    return combined_array if combined_array.length <= 1
    mid = combined_array.length/2 - 1
    merge mergesort(combined_array[0...mid]), mergesort(combined_array[mid..-1])
  end

  def merge(left, right)
    result = []
    until left.length == 0 || right.length == 0 do
      result << (left.first <= right.first ? left.shift : right.shift)
    end
    result + left + right
  end
  combined_array.sort 
end

r = [1,4,5,[1,2]]
p poorly_written_ruby_one(r)