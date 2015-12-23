=begin
Write a program that processes the string s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n" a line at a time, using all that we have learned so far. The expected output is:
=end

string = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

def linify(text,pattern)

new_string = text.split(/#{pattern}/)

new_string.each_with_index do |element, index|
puts "Line#{index} : #{element}"
end

end 

linify(string,'\n')