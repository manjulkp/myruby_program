=begin
Using what we have learned so far: I wonder if anyone could have a crack at working out the age in years and months form. For example “I’m 32 years and 6 months old.” Use the following values for age_in_seconds:`

979000000

2158493738

246144023

1270166272

1025600095

=end

def age_in_years(age_in_seconds)
year = 365
month = 12
seconds_in_a_month = 60 * 60 * 24 * 30
hours_in_one_day = 24
seconds_in_year = 60 * 60 * 24 * 365

age = age_in_seconds.to_i/ seconds_in_year
age_month = (age_in_seconds.to_i % seconds_in_year) / seconds_in_a_month

puts "My age is #{age} years and #{age_month} month"

end
age_of_many_ppl =[979000000, 2158493738, 246144023, 1270166272, 1025600095]

age_of_many_ppl.each do |age|
age_in_years(age)
end
