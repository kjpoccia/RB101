def interleave(arr1, arr2)
  zipped = arr1.zip(arr2)
  zipped.flatten!
end

p interleave([1, 2, 3], ['a', 'b', 'c'])