class LoggerWithDateAndDetails
  def format(text)
    "Log was creates at #{Time.now}, please check details #{text}"
  end
end
