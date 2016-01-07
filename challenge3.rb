def multiplication_table(number, heading = false, decorate = false)
  @table = ''
  column_width(number)
  heading(heading)
  decorate(decorate, heading)
  table(number)
  decorate(decorate, heading)
  @table << "\n"
end

def column_width(number)
  if number == 0 || number == 1
    @decoration_width = 3
  else
    @col_width = (number * number).to_s.length
    @decoration_width = number.to_i * @col_width + number.to_i
  end
end

def decorate(boolean, heading)
  if boolean
    if	@decoration_width > heading.length
      @table << '=' * @decoration_width + "\n"
    else
      @table << '=' *	heading.length	+	 "\n"
    end
  end
end

def table(num)
  if num == 0 || num == 1
    @table << " #{num} \n"
  else
    for i in 1..num
      @table << " %#{num.to_s.length}d " %i 
      (i + i).step(i * num, i) { |i| @table << "%#{@col_width}d " % i }
      @table << "\n"
     end
  end
end

def heading(heading)
  @table << ' ' * ((@decoration_width / 2) - heading.length / 2) if @decoration_width > heading.length
  @table << heading + "\n"
end

puts multiplication_table(0, '3', true)