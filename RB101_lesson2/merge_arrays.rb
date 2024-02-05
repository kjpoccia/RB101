def merge_arrays(arr1, arr2)
  counter_a = 0
  counter_b = 0
  index = 0
  merged_array = []
  until index == arr1.length * 2
    if index.even?
      merged_array[index] = arr1[counter_a]
      counter_a += 1
    else
      merged_array[index] = arr2[counter_b]
      counter_b += 1
    end
    index += 1
  end
  merged_array
end

print merge_arrays([1, 2, 3], [4, 5, 6])
