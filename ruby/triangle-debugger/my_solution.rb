def valid_triangle?(a, b, c)
  sum = 0
  if a != 0 || b != 0 || c != 0
    if a >= b
      largest = a
      sum += b
    else 
      largest = b
      sum += a
    end
    if c > largest
      sum += largest
      largest = c
    else 
      sum += c
    end
    if sum > largest
      return true
    else
      return false
    end
  else 
    return false
  end
end

