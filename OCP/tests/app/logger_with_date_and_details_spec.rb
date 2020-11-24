require './app/logger_with_date_and_details'

RSpec.describe LoggerWithDateAndDetails do
  context 'when receiving a text' do
    it 'returns formatted text with date and details' do
      text = 'Olá, mundo.'
      formatted_text_with_date_and_details = "Log was creates at #{Time.now}, please check details #{text}"

      subject = described_class.new.format(text)

      expect(subject).to eq(formatted_text_with_date_and_details)
    end
  end
end
