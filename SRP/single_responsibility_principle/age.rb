require 'date'
# require 'time_difference'

class Age
  def initialize(birthdate:)
    @birthdate = Date.parse(birthdate)
  end

  def calculate
    year_diff = Date.today.year - @birthdate.year

    if birth_month_has_passed? || birth_day_has_passed_this_month?
      year_diff
    else
      year_diff - 1
    end
  end

  private

  def birth_month_has_passed?
    Date.today.month > @birthdate.month
  end

  def birth_day_has_passed_this_month?
    (Date.today.month == @birthdate.month) && (Date.today.day >= @birthdate.day)
  end
end

# https://github.com/tmlee/time_difference

# def calculate
#   start_time = Date.parse(@birthdate)
#   end_time = Date.today
#   TimeDifference.between(start_time, end_time).in_years.to_i
# end