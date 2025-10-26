def sum_odd_indexed(array)
  i = 0
  sum = 0

  array.each do |element|
      sum += element if i.odd?
      i += 1
  end
  return sum
end

def even_numbers(array)
  array.select {|element| element.even?}
end

def short_words(array, max_length)
  array.reject {|element| element.length > max_length}
end

def first_under(array, limit)
  array.find {|element| element < limit}
end

def add_bang(array)
  array.map {|element| element << "!"}
end

def concatenate(array)
  array.reduce {|all, current_element| all + current_element}
end

def sorted_pairs(array)
  array.each_slice(2).map do |pair|
    pair.sort
  end
end
