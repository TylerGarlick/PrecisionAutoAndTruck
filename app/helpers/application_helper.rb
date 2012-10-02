module ApplicationHelper

  def friendly_date(date)
    date.strftime("%B %d %Y")
  end

  def friendly_time(date)
    date.localtime.strftime("%I:%M %p")
  end

  def friendly_date_and_time(date)
    date.localtime.strftime("%I:%M %p on %B %d, %Y")
  end
end
