return function(array, target)
  local function search_array(min, max)
    if max == 0 then
      return -1
    elseif target > array[max] then
      return -1
    elseif target < array[min] then
      return -1
    end

    while(min <= max) do
      index = (max+min)//2

      if array[index] == target then
        return index
      elseif array[index] > target then
        max = index - 1
      else
        min = index + 1
      end 

    end
    return -1

  end

  return search_array(1, #array)

end
