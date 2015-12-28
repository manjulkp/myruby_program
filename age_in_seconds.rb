puts "Enter the age in seconds = "

STDOUT.flush

age_in_seconds = gets.chomp



def age_in_years(age_in_seconds)
year = 365
month = 12
hours_in_one_day = 24
seconds_in_year = 60 * 60 * 24 * 365
age = age_in_seconds.to_i / seconds_in_year
format("%.2f", age)
end

puts "My age in years is #{age_in_years(age_in_seconds)} "





