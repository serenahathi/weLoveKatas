require 'date'

def most_frequent_days(year)
  year_start = Date.parse("01/01/#{year}")
  year_end = Date.parse("31/12/#{year}")
  year_range = [*year_start..year_end]

  days_of_week = {
            "Sunday" => 0,
            "Monday" => 1,
            "Tuesday" => 2,
            "Wednesday" => 3,
            "Thursday" => 4,
            "Friday" => 5,
            "Saturday" => 6
          }

  6.times do |counter|
    new_key = days_of_week.invert[counter]
    days_of_week[new_key] = number_of_days(year_range, counter)
  end

  most_frequent_days = days_of_week.select { |number| days_of_week[number] > 52 }
  puts most_frequent_days.keys
  end

  def number_of_days(year_range, day_of_week)
    year_range.count { |x| x.wday == day_of_week}
  end


most_frequent_days(1492)


