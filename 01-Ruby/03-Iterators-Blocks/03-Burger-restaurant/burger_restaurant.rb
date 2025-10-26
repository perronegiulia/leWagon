def burger(patty, sauce, topping)
  patty = yield(patty) if block_given?
  ["bread", patty, sauce, topping, "bread"]
end
