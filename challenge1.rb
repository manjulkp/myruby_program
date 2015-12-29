# Using what we have learned so far: I wonder if anyone could have a crack at
# working out the age in years and months form. For example "I’m 32 years and 6
# months old." Use the following values for age_in_seconds:`
#
# 979000000
# 2158493738
# 246144023
# 1270166272
# 1025600095
#

def days_in_a_year
  365
end

def months_in_a_year
  12
end

def hours_in_a_day
  24
end

def seconds_in_a_month
  60 * 60 * 24 * 30
end

def seconds_in_a_year
  60 * 60 * 24 * 365
end

def hours_in_one_day
  24
end

def age_in_years(age_in_seconds)
  age_year = age_in_seconds.to_f / seconds_in_a_year
  age_month = (age_in_seconds.to_f % seconds_in_a_year) / seconds_in_a_month
  #### we could return array [age_year, age_month]
  #### but we are using hash
  { years: age_year, months: age_month }
end

ages = [979_000_000, 2_158_493_738, 246_144_023, 1_270_166_272, 1_025_600_095]

report = 'The age is %<years>2i and %<months>2i.'
ages.each do |age|
  puts format(report, age_in_years(age))
end
