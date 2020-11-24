class LoggerWithDate
  def format(text)
    "#{Time.now} #{text}"
  end
end
