  def print_multiplication_table(size)
  column_width = 2 + (size*size).to_s.length
  (1..size).each do |i|
    (1..size).each do |j|
      result = (i * j).to_s
      print result
    end
    print("\n")
  end
  end
  
  print print_multiplication_table(7)
	 
	    
	   
  
  
  