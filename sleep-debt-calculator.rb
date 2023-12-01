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

  def get_actual_sleep_hours
    get_sleep_hours('Monday') +
    get_sleep_hours('Tuesday') +
    get_sleep_hours('Wednesday') +
    get_sleep_hours('Thursday') +
    get_sleep_hours('Friday') +
    get_sleep_hours('Saturday') +
    get_sleep_hours('Sunday')
  end

  def get_ideal_sleep_hours
    ideal_hours = 8
    ideal_hours * 7
  end

  def calculate_sleep_debt
    actual_sleep_hours = get_actual_sleep_hours
    ideal_sleep_hours = get_ideal_sleep_hours

    if actual_sleep_hours == ideal_sleep_hours
      print 'Perfect sleep!'
    elsif actual_sleep_hours > ideal_sleep_hours
      print "Uh oh - You have overslept #{(ideal_sleep_hours - actual_sleep_hours)} hours!"
    elsif 
      print "Get more sleep dammit! You need #{(ideal_sleep_hours - actual_sleep_hours)} hours more to hit your quota"

    end
  end
end

hello = SleepDebtCalculator.new
hello.calculate_sleep_debt