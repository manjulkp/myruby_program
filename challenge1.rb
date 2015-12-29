=begin
Using what we have learned so far: I wonder if anyone could have a crack at working out the age in years and months form. For example “I’m 32 years and 6 months old.” Use the following values for age_in_seconds:`

979000000

2158493738

246144023

1270166272

1025600095

=end

def age_in_years(age_in_seconds)
  days_in_a_year = 365
  months_in_a_year = 12
  seconds_in_a_month = 60 * 60 * 24 * 30
  hours_in_one_day = 24
  seconds_in_year = 60 * 60 * 24 * 365

  age_year = age_in_seconds.to_f / seconds_in_year
  age_month = (age_in_seconds.to_f % seconds_in_year) / seconds_in_a_month
  #### return array [age_year, age_month]
  #### using hash 
  {years: age_year, months: age_month}
end

ages =[979000000, 2158493738, 246144023, 1270166272, 1025600095]

ages.each do |age|
  years,month = age_in_years(age)
  puts "The age is %<years>2i and %<months>i." % age_in_years(age)
end
