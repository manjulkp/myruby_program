=begin
Write a method called convert that takes one argument which is a temperature in degrees Fahrenheit. This method should return the temperature in degrees Celsius.

To format the output to say 2 decimal places, we can use the Kernel's format method. For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57. Another way is to use the round function as follows: 
=end

#Formule is 5/9(Fahrenheit-32)

def convert(fahrenheit)
(fahrenheit.to_f-32)*5/9
end

temp_in_fahrenheit=gets.chomp

temp_in_celsius = convert(temp_in_fahrenheit)

puts format('Tempearture in Celsius : %.2f', temp_in_celsius)