def sum_odd_indexed(array)
  i = 0
  sum = 0

  array.each do |elemment|
      sum += elemment if i.odd?
      i += 1
  end
  return sum
end

def even_numbers(array)
  array.select {|elemment| elemment.even?}
end

def short_words(array, max_length)
  array.reject {|elemment| elemment.length > max_length}
end

def first_under(array, limit)
  array.find {|elemment| elemment < limit}
end

def add_bang(array)
  array.map {|elemment| elemment << "!"}
end

def concatenate(array)
  array.reduce {|all, current_elemment| all + current_elemment}
end

def sorted_pairs(array)
  array.each_slice(2).map do |pair|
    pair.sort
  end
end
