def array_to_hash(array)
  if block_given?
    array.map.with_index { |value, index| [yield(index), value] }.to_h
    
  else 
    array.map.with_index { |value, index| [index.to_s, value] }.to_h
  end
end
