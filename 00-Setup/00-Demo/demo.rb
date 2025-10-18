def circle_area(radius)
  circle_area = 3.14 * radius * radius
  if radius.positive?
    return circle_area
  else
    return 0
  end
end
