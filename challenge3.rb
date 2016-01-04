	def multiplication_table (number, heading = false, decorate = false)
		@table = ''
		puts   heading 
		column_width(number)
		decorate(decorate)
		table(number)
		decorate(decorate)
		@table << "\n"
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
		end 
	end



puts multiplication_table(9, 'multiplicaton table', true)