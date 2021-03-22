def circle_area(radius)
  # TODO: Implement the `circle_area` method
  if radius.negative?
 	return 0
  else 
  	phi = 3.14
  	area = phi * radius **2
  	return area
  end
end
