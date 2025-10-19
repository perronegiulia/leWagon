def sum_with_for(min, max)
    if min > max
    sum =  -1
  else
    sum = 0
    for min in min..max
      sum += min
    end
  end
  return sum
end

def sum_with_while(min, max)
  if min > max
    sum =  -1
  else
    sum = 0
    while min <= max
      sum += min
      min += 1
    end
  end
  return sum
end

