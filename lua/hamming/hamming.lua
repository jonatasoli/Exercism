local Hamming = {}

function Hamming.compute(a,b)
  count = 0
  _len = string.len(a)
  if _len ~= string.len(b) then
    return -1
  end

  for i=0, #a do
    if a:sub(i,i) ~= b:sub(i,i) then
      count = count + 1
    end
  end
  return count
end

return Hamming
