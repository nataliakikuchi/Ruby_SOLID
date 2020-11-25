require './app/logger_with_date'

RSpec.describe LoggerWithDate do
  context 'when receiving a text' do
    it 'returns formatted text with date' do
      text = 'Olá, mundo.'
      formatted_text_with_date = "#{Time.now} #{text}"

      subject = described_class.new.format(text)

      expect(subject).to eq(formatted_text_with_date)
    end
  end
end
