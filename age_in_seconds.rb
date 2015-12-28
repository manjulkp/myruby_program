puts "Enter the age in seconds = "

STDOUT.flush

age_in_seconds = gets.chomp

years = age_in_years(age_in_seconds)

month = month_remainder(age_in_seconds)

puts " The age of the person in years is #{years} and #{month}"

def age_in_years(age_in_seconds)

seconds_in_year = 60 * 60 * 24 * 365
age_in_year = age_in_seconds/seconds_in_year

end

def month_remainder(age_in_seconds)

seconds_in_a_month = 60 * 60 * 24 * 30
seconds_in_year = 60 * 60 * 24 * 365

remainder = (age_in_seconds % seconds_in_year) / seconds_in_a_month

end


