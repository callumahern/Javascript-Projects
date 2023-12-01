class SleepDebtCalculator

  def get_sleep_hours(day)
    case day
    when "Monday"
      7
    when "Tuesday"
      6
    when "Wednesday"
      8
    when "Thursday"
      6.5
    when "Friday"
      6
    when "Saturday"
      8
    when "Sunday"
      9
    end
  end
end