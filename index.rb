def binary_search(array, element)
  if array.include? element
    l = 0
    r = array.length - 1

    while l <= r
      half = (l + r) / 2
      elementHalf = array[half]

      if elementHalf < element
        l = half + 1 # the element is on the right of our array

      elsif elementHalf > element
        r = half - 1 # the element is on the left of our array

      elsif elementHalf == element
        return "Your element was found in the position #{half}"
      end
    end

  else
    return "Not found..."
  end
end

def sorting(array)
  n = array.length

  (n - 1).times do
    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i] # swap the values
      end
    end
  end

  return array
end

arrayNumber = [87, 42, 19, 56, 73, 94, 20, 37, 11, 68, 35, 62, 91, 26, 79, 3, 44, 98, 5, 77]
sorting(arrayNumber)
puts binary_search(arrayNumber, 11)
