def divide_and_multiply(value: )
  array = [value]
  while value != 1
    if value % 2 == 0
      value /= 2
      array << value
    else
      value *= 3
      value += 1
      array << value
    end
  end
  return array
end
