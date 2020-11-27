require './app/logger'
require './app/logger_with_date'
require './app/logger_without_formatting'
require './app/delivery_by_slack'
require './app/delivery_to_stdout'

logger = Logger.new(format: LoggerWithDate.new, delivery: DeliveryToStdout.new)

puts logger.log('oie')

puts '_________________________________________________'

logger2 = Logger.new(format: LoggerWithoutFormatting.new, delivery: DeliveryBySlack.new)

puts logger2.log('oieeeeeee')
