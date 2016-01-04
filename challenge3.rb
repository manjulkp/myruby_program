	def multiplication_table (number, heading = false, decorate = false)
		@table = ''
    puts heading # append to table, like you do on line 5, 6, 7 and 8, no output in the method required or wanted.
		column_width(number)
		decorate(decorate)
		table(number)
		decorate(decorate)
		@table << "\n" # good returning an object other than nil.
	end


	def column_width(number)
		if number == 0 || number == 1
			@decoration_width = 2
		else
			@col_width = (number * number).to_s.length
			@decoration_width = number.to_i  * @col_width + number.to_i
		end
	end

	def decorate(boolean)
    @table << '=' * @decoration_width + "\n" if boolean  
	end

	def table(num)
		if num == 0 || num == 1
			@table << " #{num} \n"
		else
			for i in 1..num
        @table << " %#{num.to_s.length}d " %i    
				(i+i).step(i * num, i) { |i| @table << "%#{@col_width}d " % i }
				@table << "\n"
			end
		end # and ending whitespace here as well.
	end



puts multiplication_table(9, 'multiplicaton table', true)

# This edge case is not working very well as it should be centered in the
# heading
puts multiplication_table(0, 'multiplicaton table', true)

puts multiplication_table(1, 'multiplicaton table', true)
# This edge case works like 0, but should be centered in the heading

puts multiplication_table(3, '3x3', true)
 # doesn't have a final heading, so off as well.  Should be centered like 9x9
# table

# You are using tabs, and leaving ending whitespace on some lines.
