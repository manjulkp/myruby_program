def convert(user_scale, temp)
  if user_scale == 'celsius'
  new_temp = (temp.to_f * 5 / 9) + 32
  puts "The temperature is converted to Fahrenheit : #{new_temp} F"
  elsif user_scale == 'Fahrenheit'
  new_temp =  (temp.to_f - 32) * 9 / 5
  puts "The temperature is converted to Celsius : #{new_temp} C"
  else
  puts "Invalid scale conversion"
  end
end



puts "Enter the temperature :"

user_temp = gets.chomp

puts "Is the temperature is in celsius or Fahrenheit ? Enter celsius or fahrenheit"

user_temp_unit  = gets.chomp

convert(user_temp_unit, user_temp )


